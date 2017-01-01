#include <string>
#include <cxxabi.h>
#include <set>
#include <map>
#include <iostream>
#include <fstream>
#include <sstream>
#include <stack>
#include <queue> 

#include <llvm/IR/PassManager.h>
#include <llvm/IR/Value.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/BasicBlock.h>
#include <llvm/IR/Instructions.h>
#include <llvm/IR/InstIterator.h>
#include <llvm/Support/CommandLine.h>
#include <llvm/IR/ValueSymbolTable.h>
#include <llvm/IR/ValueMap.h>
#include <llvm/IR/Constants.h>
#include <llvm/IR/InstrTypes.h>
#include <llvm/Analysis/LoopInfo.h>
#include <llvm/IR/Dominators.h>
#include <llvm/Analysis/PostDominators.h>
#include <llvm/Analysis/CFG.h>

using namespace llvm;
using namespace std;

static cl::opt<string> fn("fn", cl::desc("Name of the function to be targeted"),
			  cl::value_desc("func1 func2 func3"), cl::init(""),
			  cl::ValueRequired);

static cl::opt<string> bbn("bbn", cl::desc("Name of the basic block to be targeted"),
			   cl::value_desc(""), cl::init(""), cl::ValueRequired);


static cl::opt<string> flname("fl", cl::desc("Name of the file"),
			      cl::value_desc("error"), cl::init(""),
			      cl::ValueRequired);

static cl::opt<string> mode("mode", cl::desc("profile/detect"),
			    cl::value_desc("profile/detect/dmr"), cl::init("profile"),
			    cl::ValueRequired);

static cl::opt<string> bcname("bcn", cl::desc("benchmark name"),
			      cl::value_desc("bc_name"), cl::init("default"),
			      cl::ValueRequired);



StringRef detectVarName="detectCounter";
StringRef psgProtectFnName="psgProtect";
StringRef psgProfileFnName="psgProfile";
StringRef psgRelidFnName="psgRelid";

Function *fnPsgProtect=NULL;
Function *fnPsgRelid=NULL;
Function *fnPsgProfile=NULL;

///////////////////////////////////////////////////////////////////////////
/// Function Signatures
///////////////////////////////////////////////////////////////////////////
inline string toString(int i);
bool isMangledName(string fnName);
string getDemangledName(string mangledName);
set<BasicBlock*> getExitBBs(Function* fn);
Value* getGlobalVarByName(Module *M, StringRef name);
Instruction* getNextInstr(Instruction *instr, Function* fn);
Instruction* getInstrByVal(Value* val, Function* fn);
set<Value*> getArgList(Function *fn);
bool isBaseAdrInArgLst(GetElementPtrInst* gep);
bool checkBaseAdrDef(GetElementPtrInst* gep, set<Value*> &arglist);
Constant* getStringAsConst(string strname, Module *M);
Constant* getInstrNameAsConst(Value* instr, string prefix, Module *M);
bool setDetectFlag(Value* op1, Value* op2, unsigned idx, Instruction* instrBefore, Module *M);
bool setDetectFlagByIdx(Value* newval, Instruction* instrBefore,unsigned idx, Module *M);
bool baseAdrHasDef(GetElementPtrInst* gep);
set<GetElementPtrInst*> getGEPWithNMBA(Function *fn);
bool hasPostDominator(GetElementPtrInst* gep, vector<Instruction*> instrlst, Module* M);
vector<Value*> getIdxLst(GetElementPtrInst* gep);
void fillGEPToIdxLst(GetElementPtrInst* gep, Module* M);
bool transformDMR(GetElementPtrInst *gep,Module *M);
bool transformGrp(BasicBlock* tbb, Value *tbase,Module* M);
bool transform(GetElementPtrInst* gep, Module* M);
void processTransform(Module *M);
bool insertDetectors(Function* fn, Module* M);
void updateEntryGEPInfo(BasicBlock* bb, Value* base, PHINode* phibase,vector<PHINode*> idxlst);
void populateExitGEPInfo(Function* fn, Module *M);
vector<BasicBlock*> BFS(BasicBlock* entrybb);
void populateBackEdgeInfo(Function* fn, Module *M);
bool hasExitInfo(BasicBlock* bb, Value* base);
bool hasEntryInfo(BasicBlock* bb, Value* base);
bool hasBackEdge(BasicBlock* frombb, BasicBlock* tobb);
void populateEntryGEPInfo(Function* fn, Module *M, unsigned pass);
void printMasterDB(void);
void updateMasterDB(Function* fn, Module* M);
set<Instruction*> getBkwdSlice(Instruction* instr);
void populateDIMs(Module *M);
void populateLInvInfo(Function *fn);
void insertPolyEle(Function *fn);
void readPrfData(const char* fname);
string getFgPrint(Value* val, int num, string opstr);
string getFgPrint(Value* val1, Value* val2, string opstr);
void insertLInv(unsigned gepid, Value *relid,
		Instruction* instrBefore, Module *M);
/////////////////////////////////////////////////////////////////////
// Global datastrutures
/////////////////////////////////////////////////////////////////////
set<Value*> uniqbaselst;
map<Value*,unsigned> baseidxcount;
map<Value*,Type*> baseety;
map<BasicBlock*, map<Value*, pair<PHINode*, vector<PHINode*> > > > entryGEPInfo;
map<BasicBlock*, map<Value*,GetElementPtrInst*> > exitGEPInfo;
map<const BasicBlock*, set<const BasicBlock*> > backedges;
map<GetElementPtrInst*,vector<Instruction*> > gepToidx;
map<AllocaInst*,Type*> ngepptrTotype;
map<AllocaInst*,Value*> ngepptrTobaseadr;
map<AllocaInst*,vector<AllocaInst*> > ngepptrToidxlstptr;
map<BasicBlock*, map<Value*, vector<GetElementPtrInst*> > > masterdb;
vector<GetElementPtrInst*> gepvlst;
map<GetElementPtrInst*,unsigned> geptoid;
map<unsigned,GetElementPtrInst*> idtogep;
map<unsigned,vector<vector<long long> > > t1linv;
map<long long,Value*> dimidtoref;
map<long long,vector<Value*> > dimidtopoly;
map<unsigned,vector<Value*> > gepidtolinv;
map<string,Value*> fgtoval;
map<GetElementPtrInst*,GetElementPtrInst*> geptongep;
/////////////////////////////////////////////////////////////////////


set<Instruction*> getBkwdSlice(Instruction* instr){
  Function *fn=instr->getParent()->getParent();
  set<Instruction*> visited;
  set<Instruction*>::iterator si;
  stack<Instruction*> S;
  S.push(instr);
  while (!S.empty()){
    // Pop a vertex from stack and print it
    Instruction* ci = S.top();
    S.pop();
    for (Use &U : ci->operands()) {
      Value *v = U.get();
      Instruction *vi=getInstrByVal(v,fn);
      if(vi){
	if(visited.find(vi)==visited.end()){
	  visited.insert(vi);
	  S.push(vi);
	}
      }
    }
  } 
  return visited;
}

inline string toString(int i){
  stringstream iss;
  iss << i;
  return iss.str();
}

bool isMangledName(string fnName){
  size_t pos1=0,pos2=0;
  pos1 = fnName.find_first_of('_',0);
  pos2 = fnName.find_first_of('Z',0);
  if(pos1==0 and pos2==1){
    return true;
  }
  return false;
}

string getDemangledName(string mangledName){
  if(mangledName.empty()){
    errs() << "\nError:mangled name couldn't be an empty string\n";
    exit(-1);
  }
  string demangledName;
  int status = 0;
  size_t pos = 0;
  char* result = abi::__cxa_demangle(mangledName.c_str(),NULL,NULL,&status);
  if(result){
    demangledName = string(result);
    pos = demangledName.find_first_of('(',0);
    if(pos < demangledName.length()){
      demangledName.erase(pos,demangledName.length()-pos);
    }
  }
  free(result); 
  return demangledName;
}

set<BasicBlock*> getExitBBs(Function* fn){
  set<BasicBlock*> bblst;
  for(Function::iterator I=fn->begin();I!=fn->end();I++){
    BasicBlock* bb=&*I;
    TerminatorInst *terminst= bb->getTerminator();
    if(isa<ReturnInst>(terminst)){
      //errs() << "\nINFO: Found an exit basic block!\n\n";
      bblst.insert(bb);
    }
  }
  return bblst;
}

Value* getGlobalVarByName(Module *M, StringRef name){
  for(Module::global_iterator GI=M->global_begin();GI!=M->global_end();GI++){
    Value *globalVar=&*GI;
    StringRef globalVarName=globalVar->getName();
    if(globalVarName.compare(name)==0){
      return globalVar;
    }
  }
  return NULL;
}

Instruction* getNextInstr(Instruction *instr, Function* fn){
  Instruction* targetInstr=NULL;
  inst_iterator I;
  for (I=inst_begin(fn);I!=inst_end(fn);++I){
    Instruction* tempinstr = &*I;
    if(tempinstr==instr){
      break;
    }
  }
  I++;
  targetInstr=&*I;
  if(targetInstr && instr)
    if(targetInstr->getParent()==instr->getParent())
      return targetInstr;
  return NULL;
}

Instruction* getInstrByVal(Value* val, Function* fn){
  Instruction* targetInstr=NULL;
  for (inst_iterator I=inst_begin(fn),E=inst_end(fn);I!=E;++I){
    Instruction* instr = &*I;
    Value* instrVal = &*instr;
    if(instrVal==val){
      targetInstr=instr;
      break;
    }
  }
  return targetInstr;
}

set<Value*> getArgList(Function *fn){
  set<Value*> arglist;
  for(Function::arg_iterator I=fn->arg_begin();I!=fn->arg_end();I++){
    Value *argVal=&*I;
    if(arglist.find(argVal)==arglist.end())
      arglist.insert(argVal);
  }  
  return arglist;
}

bool isBaseAdrInArgLst(GetElementPtrInst* gep){
  Function* parent=gep->getParent()->getParent();
  set<Value*> arglist=getArgList(parent);    
  Value* gepPtrOp = gep->getPointerOperand();
  if(arglist.find(gepPtrOp)!=arglist.end())
    return true;
  else
    return false;
}

bool checkBaseAdrDef(GetElementPtrInst* gep, set<Value*> &arglist){
  Value* gepPtrOp=gep->getPointerOperand();
  while(gepPtrOp){
    if(arglist.find(gepPtrOp)!=arglist.end()){
      return true;
    }
    Instruction* gepPtrOpInstr=getInstrByVal(gepPtrOp,gep->getParent()->getParent());
    if(!gepPtrOpInstr) return false;
    if(GetElementPtrInst* tmpgep=dyn_cast<GetElementPtrInst>(gepPtrOpInstr)){
      gepPtrOp=tmpgep->getPointerOperand();
    } else {
      gepPtrOp=NULL;
    }
  }
  return false;
}

Constant* getStringAsConst(string strname, Module *M){  
  Constant *strnameConst =
    ConstantDataArray::getString(getGlobalContext(),strname,true);
  
  GlobalVariable *strnameGlobal =
    new GlobalVariable(*M,strnameConst->getType(),true,GlobalValue::InternalLinkage,
		       strnameConst,"strname");
  
  Constant *nullvalue =
    Constant::getNullValue(IntegerType::getInt32Ty(getGlobalContext()));
  
  vector<Constant*> gepParams;
  gepParams.push_back(nullvalue);
  gepParams.push_back(nullvalue);
  Constant *strnamePtr=
    ConstantExpr::getGetElementPtr(strnameConst->getType(),strnameGlobal,
				   gepParams,false,NULL);
  return strnamePtr;
}

Constant* getInstrNameAsConst(Value* instr, string prefix, Module *M){
  string instrString = instr->getName().str()+prefix+flname;
  errs() << "\nINFO: file name: " << instrString;
  Constant *instrName = ConstantDataArray::getString(getGlobalContext(),
						     instrString,
						     true);
  GlobalVariable *instrNameGlobal = new GlobalVariable(*M,
						       instrName->getType(),
						       true,
						       GlobalValue::InternalLinkage,
						       instrName,
						       "instrname");
  Constant *nullvalue =
    Constant::getNullValue(IntegerType::getInt32Ty(getGlobalContext()));  
  vector<Constant*> gepParams;
  gepParams.push_back(nullvalue);
  gepParams.push_back(nullvalue);
  Constant *instrNamePtr =
    ConstantExpr::getGetElementPtr(instrName->getType(),
				   instrNameGlobal,
				   gepParams,false,NULL);
  return instrNamePtr;
}

bool setDetectFlagByIdx(Value* newval, Instruction* instrBefore,
		   unsigned idx, Module *M){  
  Type* int64ty=Type::getIntNTy(getGlobalContext(),64);
  Value* detectGlbVarRef=getGlobalVarByName(M,detectVarName);  
  Value* newdetectVal= new ZExtInst(newval,int64ty,"newdetval",instrBefore);
 LoadInst* olddetectVal=new LoadInst(detectGlbVarRef,"ldolddetval",instrBefore);
  Value* idxval=ConstantInt::get(int64ty,idx,false);
  if(idx>=1 && idx<=63){
    BinaryOperator* shlnewval=
      BinaryOperator::Create(Instruction::BinaryOps::Shl,
  			     newdetectVal,idxval,
  			     "updetval",instrBefore);    
    
    newdetectVal=shlnewval;
  } 

  BinaryOperator* updetectVal=
    BinaryOperator::Create(Instruction::BinaryOps::Or,newdetectVal,
  			   olddetectVal,"updetval",instrBefore);
  StoreInst* stdetectVal= new StoreInst(updetectVal,detectGlbVarRef,instrBefore);  
  

  return true;
}

bool setDetectFlag(Value* op1, Value* op2, unsigned idx,
		   Instruction* instrBefore, Module *M){  
  Type* int64ty=Type::getIntNTy(getGlobalContext(),64);
  Value* detectGlbVarRef=getGlobalVarByName(M,detectVarName);  
  CmpInst* cmpops=CmpInst::Create(Instruction::ICmp,CmpInst::ICMP_NE,
				  op1,op2,"cmpopdet",instrBefore);

  if(!detectGlbVarRef || !cmpops) return false;

  Value* newdetectVal= new ZExtInst(cmpops,int64ty,"newdetval",instrBefore);
  LoadInst* olddetectVal=new LoadInst(detectGlbVarRef,"ldolddetval",instrBefore);

  if(idx>=1 && idx<=63){
    Value* idxval=ConstantInt::get(int64ty,idx,false);
    BinaryOperator* shlnewval=
      BinaryOperator::Create(Instruction::BinaryOps::Shl,
  			     newdetectVal,idxval,
  			     "updetval",instrBefore);    
    
    newdetectVal=shlnewval;
  } 

  BinaryOperator* updetectVal=
    BinaryOperator::Create(Instruction::BinaryOps::Or,newdetectVal,
			   olddetectVal,"updetval",instrBefore);
  StoreInst* stdetectVal= new StoreInst(updetectVal,detectGlbVarRef,instrBefore);  
  return true;
}

bool baseAdrHasDef(GetElementPtrInst* gep){
  Value* gepBaseVal=gep->getPointerOperand();
  Function* parentFn=gep->getParent()->getParent();
  Instruction* gepBase=getInstrByVal(gepBaseVal,parentFn);
  return (gepBase!=NULL);
}

set<GetElementPtrInst*> getGEPWithNMBA(Function *fn){
  set<GetElementPtrInst*> geplst;
  for (inst_iterator I=inst_begin(fn),E=inst_end(fn);I!=E;++I){
    Instruction* currInstr = &*I;
    if(GetElementPtrInst* gep = dyn_cast<GetElementPtrInst>(currInstr)){
      if(!baseAdrHasDef(gep))
	//	errs() << "\nINFO: GEP with NMBA is: " << *gep;
	geplst.insert(gep);
    }
  }
  return geplst;
}

bool hasPostDominator(GetElementPtrInst* gep, vector<Instruction*> instrlst, Module* M){
  Function* parentFn=gep->getParent()->getParent();
  set<BasicBlock*> bblst=getExitBBs(parentFn);
  DominatorTree dt;
  set<BasicBlock*>::iterator si;
  for(si=bblst.begin();si!=bblst.end();++si){
    BasicBlock* bb=*si;
    if(!dt.dominates(gep,bb)){
      return false;
    }
    
    for(unsigned i=0;i<instrlst.size();i++){
      if(!dt.dominates(instrlst[i],bb)){
	return false;
      }
    }
  }
  return true;
}

vector<Value*> getIdxLst(GetElementPtrInst* gep){
  vector<Value*> idxlst;
  for(User::op_iterator gi=gep->idx_begin();gi!=gep->idx_end();gi++){
    Value* tmpidx=*gi;
    idxlst.push_back(tmpidx);
  }
  return idxlst;
}

void fillGEPToIdxLst(GetElementPtrInst* gep, Module* M){
  vector<Value*> idxlst=getIdxLst(gep);
  assert(!idxlst.empty());
  Function* parentFn=gep->getParent()->getParent();
  bool insertflag=true;
  vector<Instruction*> idxinstrlst;
  for(unsigned ii=0;ii<idxlst.size();ii++){
    Instruction* instrVal=getInstrByVal(idxlst[ii],parentFn);
    if(!instrVal) insertflag=false;
    else idxinstrlst.push_back(instrVal);
  }
  if(insertflag){    
    if(gepToidx.find(gep)==gepToidx.end()){
      gepToidx.insert(pair<GetElementPtrInst*,vector<Instruction*>>(gep,idxinstrlst));
    }
  }
  return;
}

void insertProfilers(Value* relid, unsigned gepid, Instruction* instrbefore, Module *M){
  if(fnPsgProfile && mode.compare("profile")==0){
    vector<Value*> arglist;
    Type* int64y=Type::getIntNTy(getGlobalContext(),64);
    Constant* gepidval=ConstantInt::get(int64y,gepid,false);	      
    arglist.push_back(gepidval);
    arglist.push_back(relid);
    Constant* filename=
      getStringAsConst("relid"+flname+"gepid_"+toString(gepid)+".txt",M);
    arglist.push_back(filename);	    
    CallInst::Create(fnPsgProfile,arglist,"",instrbefore);
  }      
}

bool transformGrp(BasicBlock* tbb, Value *tbase,Module* M){
  vector<GetElementPtrInst*> geplst=masterdb[tbb][tbase];  
  BasicBlock *parentBB=tbb;
  Value* gepPtrOp=tbase;
  Function *parentFn=parentBB->getParent();
  BasicBlock *entryBB=&parentFn->getEntryBlock();
  Instruction* firstNonPHI=entryBB->getFirstNonPHI();
  Instruction* firstNonPHIPBB=parentBB->getFirstNonPHI();
  Type *ty=gepPtrOp->getType();
  Type* int64ty=Type::getIntNTy(getGlobalContext(),64);
  Type* int32ty=Type::getIntNTy(getGlobalContext(),32);

  if(!hasEntryInfo(parentBB,gepPtrOp)){
    errs() << "\nFATAL ERROR: Missing entry info for one of the basic block.\n";
    return false;
  }

  pair<PHINode*, vector<PHINode*> > entinfo=entryGEPInfo[parentBB][gepPtrOp];
  

  // init lub and lui in the entry basic block
  vector<Value*> idxlst;
  GetElementPtrInst* newgep=NULL;
  Type* ety=NULL;
    
  for(unsigned gi=0;gi<geplst.size();gi++){    
    GetElementPtrInst* gep=geplst[gi];
    gepvlst.push_back(gep);
    // first gep in the chain
    // allocate and init lub and lui for the group
    if(gi==0){
      PHINode* ldlub=entinfo.first;
      vector<PHINode*> luilst=entinfo.second;      
      idxlst=getIdxLst(gep);
      assert(luilst.size()==idxlst.size() && "Size of luilst and idxlst should match!");
      // load lub and lui just before the target gep and also compute
      // the relative indices to be used in the newgep
      // LoadInst* ldlub= new LoadInst(lubAlloca,StringRef("ldlub_"),gep);
      vector<Value*> relidxlst;
      for(unsigned i=0;i<idxlst.size();i++){
	BinaryOperator* relidx=
	  BinaryOperator::Create(Instruction::BinaryOps::Sub,idxlst[i],
				 luilst[i],StringRef("relidx_"),gep);
	relidxlst.push_back(relidx);
      }

      insertProfilers(relidxlst[0],geptoid[gep],gep,M);
      // create newgep using lub, lui, and relative indices
      ety=gep->getSourceElementType();
      if(baseety.find(gepPtrOp)==baseety.end())
	baseety.insert(pair<Value*,Type*>(gepPtrOp,ety));
      
      newgep=GetElementPtrInst::Create(ety,ldlub,relidxlst,StringRef("newgep_"),gep);      
      if(geptongep.find(gep)==geptongep.end())
	geptongep.insert(pair<GetElementPtrInst*,GetElementPtrInst*>(gep,newgep));
    } else if(gi>0 && gi<=geplst.size()-1){
      // non-first and non-last gep
      // take the previous newgep and idxlist
      vector<Value*> tmpidxlst=getIdxLst(gep);
      assert(tmpidxlst.size()==idxlst.size() && "Index count must match!");
      vector<Value*> relidxlst;
      for(unsigned i=0;i<tmpidxlst.size();i++){
	BinaryOperator* relidx=
	  BinaryOperator::Create(Instruction::BinaryOps::Sub,tmpidxlst[i],
				 idxlst[i],StringRef("relidx_"),gep);
	relidxlst.push_back(relidx);
      }     
      
      insertProfilers(relidxlst[0],geptoid[gep],gep,M);
      ety=gep->getSourceElementType();
      if(baseety.find(gepPtrOp)==baseety.end())
	baseety.insert(pair<Value*,Type*>(gepPtrOp,ety));
      
      GetElementPtrInst* tmpnewgep=GetElementPtrInst::Create(ety,newgep,relidxlst,StringRef("newgep_"),gep);
      newgep=tmpnewgep;
      idxlst=tmpidxlst;
      if(geptongep.find(gep)==geptongep.end())
	geptongep.insert(pair<GetElementPtrInst*,GetElementPtrInst*>(gep,newgep));      
    }    
    // replace all uses of old gep with newgep
    gep->replaceAllUsesWith(newgep);   
  }
  return true;
}

bool transform(GetElementPtrInst* gep, Module* M){
  gepvlst.push_back(gep);
  BasicBlock *parentBB=gep->getParent();
  Function *parentFn=parentBB->getParent();
  BasicBlock *entryBB=&parentFn->getEntryBlock();
  Instruction* firstNonPHI=entryBB->getFirstNonPHI();
  Instruction* firstNonPHIPBB=parentBB->getFirstNonPHI();
  Value* gepPtrOp=gep->getPointerOperand();
  Type *ty=gepPtrOp->getType();
  Type* int64ty=Type::getIntNTy(getGlobalContext(),64);
  Type* int32ty=Type::getIntNTy(getGlobalContext(),32);	

  if(!hasEntryInfo(parentBB,gepPtrOp)){
    errs() << "\nFATAL ERROR: Missing entry info for one of the basic block.\n";
    return false;
  }

  pair<PHINode*, vector<PHINode*> > entinfo=entryGEPInfo[parentBB][gepPtrOp];

  PHINode* ldlub=entinfo.first;
  vector<PHINode*> luilst=entinfo.second;
  vector<Value*> idxlst=getIdxLst(gep);
  assert(luilst.size()==idxlst.size() && "Size of luilst and idxlst should match!");

  vector<Value*> relidxlst;
  for(unsigned i=0;i<idxlst.size();i++){
    BinaryOperator* relidx=
      BinaryOperator::Create(Instruction::BinaryOps::Sub,idxlst[i],
			     luilst[i],StringRef("relidx_"),gep);
    relidxlst.push_back(relidx);
  }

  // create newgep using lub, lui, and relative indices
  Type* ety=gep->getSourceElementType();
  if(baseety.find(gepPtrOp)==baseety.end())
    baseety.insert(pair<Value*,Type*>(gepPtrOp,ety));

  if(mode.compare("profile")==0){
    insertProfilers(relidxlst[0],geptoid[gep],gep,M);
  }

  GetElementPtrInst* newgep=
    GetElementPtrInst::Create(ety,ldlub,relidxlst,StringRef("newgep_"),gep);
  if(geptongep.find(gep)==geptongep.end())
    geptongep.insert(pair<GetElementPtrInst*,GetElementPtrInst*>(gep,newgep));
  // replace all uses of old gep with newgep
  gep->replaceAllUsesWith(newgep);

  return true;
}

void processTransform(Module *M){
  map<BasicBlock*, map<Value*, vector<GetElementPtrInst*> > >::iterator mi1;  
  for(mi1=masterdb.begin();mi1!=masterdb.end();++mi1){
    BasicBlock* bb=mi1->first;
    map<Value*, vector<GetElementPtrInst*> > bsTogeplst=mi1->second;
    map<Value*, vector<GetElementPtrInst*> >::iterator mi2;
    for(mi2=bsTogeplst.begin();mi2!=bsTogeplst.end();++mi2){      
      Value* base=mi2->first;
      if(masterdb[bb][base].size()==1){
	transform(masterdb[bb][base][0],M);
      } else if(masterdb[bb][base].size()>1){
	transformGrp(bb,base,M);
      }      
    }
  }
}

bool insertDetectors(Function* fn, Module* M){
  set<BasicBlock*> bblst=getExitBBs(fn);
  Type* int64ty=Type::getIntNTy(getGlobalContext(),64);
  set<BasicBlock*>::iterator bbi;
  set<Value*>::iterator si;
  for(bbi=bblst.begin();bbi!=bblst.end();++bbi){
    BasicBlock* bb=*bbi;
    Instruction* termi=bb->getFirstNonPHI();
    for(si=uniqbaselst.begin();si!=uniqbaselst.end();++si){
      Value* base=*si;
      if(!hasEntryInfo(bb,base)) continue;
      if(baseety.find(base)==baseety.end()) continue;
      Type* ety=baseety[base];
      PHINode* rsltadr=entryGEPInfo[bb][base].first;
      vector<PHINode*> phidxlst=entryGEPInfo[bb][base].second;
      vector<Value*> idxlst;
      for(unsigned i=0;i<phidxlst.size();i++){
	Value* tmpval=phidxlst[i];
	idxlst.push_back(tmpval);
      }
      GetElementPtrInst* duprsltadr=
	GetElementPtrInst::Create(ety,base,idxlst,StringRef("duprsltadr_"),termi);
      PtrToIntInst* castadr1= new PtrToIntInst(rsltadr,int64ty,"castadr1",termi);
      PtrToIntInst* castadr2= new PtrToIntInst(duprsltadr,int64ty,"castadr2",termi);
      setDetectFlag(castadr1,castadr2,1,termi,M);
      // if(fnPrfRef && mode.compare("profile")==0){
      // 	vector<Value*> arglist;
      // 	arglist.push_back(duprsltadr);
      // 	arglist.push_back(rsltadr);
      // 	arglist.push_back(base);
      // 	arglist.push_back(idxlst[0]);
      // 	Constant* filename=
      // 	  getStringAsConst("reladr"+flname+".txt",M);
      // 	arglist.push_back(filename);	    
      // 	CallInst::Create(fnPrfRef,arglist,"",termi);
      // }
      
    }
  }
  return true;
}



void updateEntryGEPInfo(BasicBlock* bb, Value* base, PHINode* phibase,
			vector<PHINode*> idxlst){
  if(entryGEPInfo.find(bb)!=entryGEPInfo.end()){
    if(entryGEPInfo[bb].find(base)!=entryGEPInfo[bb].end()){
      entryGEPInfo[bb][base]=pair<PHINode*, vector<PHINode*> >(phibase,idxlst);
    } else {
      pair<PHINode*, vector<PHINode*> > tmppair;
      tmppair.first=phibase;
      tmppair.second=idxlst;
      entryGEPInfo[bb].insert(pair<Value*, pair<PHINode*,
			      vector<PHINode*> > >(base,tmppair));
    }
  } else {
    pair<PHINode*,vector<PHINode*> > tmppair;
    tmppair.first=phibase;
    tmppair.second=idxlst;
    map<Value*, pair<PHINode*, vector<PHINode*> > > tmpentry;
    tmpentry.insert(pair<Value*, pair<PHINode*, vector<PHINode*> > >(base,tmppair));
    entryGEPInfo.insert(pair<BasicBlock*, map<Value*, pair<PHINode*, vector<PHINode*> > > >(bb,tmpentry));
  }
}


void populateExitGEPInfo(Function* fn, Module *M){
  for (Function::iterator i = fn->begin(), e = fn->end(); i != e; ++i){
    BasicBlock* bb=&*i;
    for (BasicBlock::iterator bbi = bb->begin(), bbe = bb->end(); bbi != bbe; ++bbi){
      Instruction* instr=&*bbi;
      if(GetElementPtrInst* gep=dyn_cast<GetElementPtrInst>(instr)){
	if(!baseAdrHasDef(gep)){
	  Value* base=gep->getPointerOperand();
	  if(uniqbaselst.find(base)==uniqbaselst.end())
	    uniqbaselst.insert(base);
	  if(exitGEPInfo.find(bb)!=exitGEPInfo.end()){
	    if(exitGEPInfo[bb].find(base)!=exitGEPInfo[bb].end()){
	      exitGEPInfo[bb][base]=gep;
	    } else{
	      exitGEPInfo[bb].insert(pair<Value*,GetElementPtrInst*>(base,gep));
	    }
	  } else {
	    map<Value*,GetElementPtrInst*> lgepentry;
	    lgepentry.insert(pair<Value*,GetElementPtrInst*>(base,gep));
	    exitGEPInfo.insert(pair<BasicBlock*,
			       map<Value*,GetElementPtrInst*> >(bb,lgepentry));
	  }
	}	
      }
    }
  }
}

vector<BasicBlock*> BFS(BasicBlock* entrybb){
  vector<BasicBlock*> result;
  set<BasicBlock*> visited;
  queue<BasicBlock*> bbq;
  bbq.push(entrybb);
  result.push_back(entrybb);
  visited.insert(entrybb);
  while(!bbq.empty()){
    BasicBlock* bb=bbq.front();
    bbq.pop();
    for (succ_iterator si=succ_begin(bb),se=succ_end(bb); si!=se;++si){
      BasicBlock *succ=*si;
      if(visited.find(succ)==visited.end()){
	visited.insert(succ);
	bbq.push(succ);
	result.push_back(succ);
      }
    }
  }
  return result;
}

void populateBackEdgeInfo(Function* fn, Module *M){
  SmallVector<pair< const BasicBlock *, const BasicBlock * >,100> result;
  FindFunctionBackedges(*fn,result);
  for(unsigned i=0;i<result.size();i++){
    pair< const BasicBlock *, const BasicBlock * > rp=result[i];
    if(backedges.find(rp.second)==backedges.end()){
      set<const BasicBlock*> srclst;
      srclst.insert(rp.first);
      backedges.insert(pair<const BasicBlock*, set<const BasicBlock*> >(rp.second,srclst));
    } else {
      if(backedges[rp.second].find(rp.first)==backedges[rp.second].end())
	backedges[rp.second].insert(rp.first);      
    }
  }
}

bool hasExitInfo(BasicBlock* bb, Value* base){
  if(exitGEPInfo.find(bb)!=exitGEPInfo.end())
    if(exitGEPInfo[bb].find(base)!=exitGEPInfo[bb].end())
      return true;  
  return false;
}

bool hasEntryInfo(BasicBlock* bb, Value* base){
  if(entryGEPInfo.find(bb)!=entryGEPInfo.end())
    if(entryGEPInfo[bb].find(base)!=entryGEPInfo[bb].end())
      return true;  
  return false;
}

bool hasBackEdge(BasicBlock* frombb, BasicBlock* tobb){
  if(backedges.find(tobb)!=backedges.end())
    if(backedges[tobb].find(frombb)!=backedges[tobb].end())
      return true;
  return false;
}

void populateEntryGEPInfo(Function* fn, Module *M, unsigned pass){
  BasicBlock* entryBB=&fn->getEntryBlock();
  set<BasicBlock*> exitBBs=getExitBBs(fn);
  vector<BasicBlock*> bfs=BFS(entryBB);
  set<Value*>::iterator bi;
  for(bi=uniqbaselst.begin();bi!=uniqbaselst.end();++bi){
    Value* base=*bi; 
    for(unsigned i=0;i<bfs.size();i++){
      if(bfs[i]==entryBB) continue;
      BasicBlock* bb=bfs[i];
      unsigned idxCount=1;
      Type* int64ty=Type::getInt64Ty(getGlobalContext());      
      Instruction* fnonphi=bb->getFirstNonPHI();
      vector<BasicBlock*> predbblst;
      for (pred_iterator pi=pred_begin(bb),pe=pred_end(bb); pi!=pe;++pi){
	BasicBlock* predbb=*pi;
	predbblst.push_back(predbb);
      }
      unsigned pred_count=predbblst.size();
      if(pred_count){
	if(pass==1) { // 1st pass
	  // In first pass create a PHI node and add place holders for
	  // each incoming nodes
	  // Also if any of the incoming nodes have GEP then update
	  // the respective PHINode idx with the GEP value
	  PHINode* phibase=PHINode::Create(base->getType(),0,"phibase_",fnonphi);  
	  vector<PHINode*> phidxlst;
	  for(unsigned idc=0;idc<idxCount;idc++){
	    PHINode* phidx=PHINode::Create(int64ty,0,"phidx_",fnonphi);	    
	    phidxlst.push_back(phidx);
	  }
	  
	  for(unsigned j=0;j<pred_count;j++){
	    phibase->addIncoming(base,predbblst[j]);
	    for(unsigned k=0;k<idxCount;k++){
	      Constant* i64zero=ConstantInt::get(int64ty,0,false);	      
	      phidxlst[k]->addIncoming(i64zero,predbblst[j]);
	    }
	    
	    if(hasExitInfo(predbblst[j],base)){

	      // attach base
	      GetElementPtrInst* gep=exitGEPInfo[predbblst[j]][base];
	      int phidx=phibase->getBasicBlockIndex(predbblst[j]);
	      if(phidx>=0) phibase->setIncomingValue(phidx,gep);

	      // attach indices
	      vector<Value*> idxlst=getIdxLst(gep);	      
	      for(unsigned l=0;l<idxCount;l++){
		phidx=phidxlst[l]->getBasicBlockIndex(predbblst[j]);
		if(phidx>=0) phidxlst[l]->setIncomingValue(phidx,idxlst[l]);
	      }	    	      
	    }    
	  }	  
	  updateEntryGEPInfo(bb,base,phibase,phidxlst);	  
	} else if(pass==2) { // 2nd pass
	  // In second pass update the PHINode info for all incoming nodes
	  // which don't have GEP
	  // only do it if not a back edge and does not have a exit entry	  
	  for(unsigned j=0;j<pred_count;j++){
	    if(!hasBackEdge(predbblst[j],bb) &&
	       !hasExitInfo(predbblst[j],base) &&
	       hasEntryInfo(predbblst[j],base) &&
	       hasEntryInfo(bb,base)){
	        // attach base
		PHINode* phibase=entryGEPInfo[bb][base].first;
		PHINode* inphibase=entryGEPInfo[predbblst[j]][base].first;
		int phidx=phibase->getBasicBlockIndex(predbblst[j]);
		if(phidx>=0) phibase->setIncomingValue(phidx,inphibase);

		// attach indices
		vector<PHINode*> phidxlst=entryGEPInfo[bb][base].second;
		vector<PHINode*> inphidxlst=entryGEPInfo[predbblst[j]][base].second;	
		for(unsigned l=0;l<idxCount;l++){
		  phidx=phidxlst[l]->getBasicBlockIndex(predbblst[j]);
		  if(phidx>=0) phidxlst[l]->setIncomingValue(phidx,inphidxlst[l]);
		}
	    }	    
	  } 	  
	} else if(pass==3){ // 3rd pass
	  // In 3rd pass, mainly update the backedge information
	  for(unsigned j=0;j<pred_count;j++){	      
	    if(hasBackEdge(predbblst[j],bb) &&
	       !hasExitInfo(predbblst[j],base) &&
	       hasEntryInfo(predbblst[j],base) &&
	       hasEntryInfo(bb,base)){
		PHINode* phibase=entryGEPInfo[bb][base].first;
		PHINode* inphibase=entryGEPInfo[predbblst[j]][base].first;
		int phidx=phibase->getBasicBlockIndex(predbblst[j]);
		if(phidx>=0) phibase->setIncomingValue(phidx,inphibase);

		// attach indices
		vector<PHINode*> phidxlst=entryGEPInfo[bb][base].second;
		vector<PHINode*> inphidxlst=entryGEPInfo[predbblst[j]][base].second;	
		for(unsigned l=0;l<idxCount;l++){
		  phidx=phidxlst[l]->getBasicBlockIndex(predbblst[j]);
		  if(phidx>=0) phidxlst[l]->setIncomingValue(phidx,inphidxlst[l]);
		}		
	    } 
	  }
	}	
      }
    }
  }
}

void printMasterDB(void){
  errs() << "\n\n\n";
  unsigned overallCount=0;
  unsigned bbCount=0;
  map<BasicBlock*, map<Value*, vector<GetElementPtrInst*> > >::iterator mi1;  
  for(mi1=masterdb.begin();mi1!=masterdb.end();++mi1){
    bbCount++;    
    unsigned baseCount=0;
    map<Value*, vector<GetElementPtrInst*> > bsTogeplst=mi1->second;
    map<Value*, vector<GetElementPtrInst*> >::iterator mi2;
    for(mi2=bsTogeplst.begin();mi2!=bsTogeplst.end();++mi2){      
      baseCount++;
      errs() << "\nBB id# " << bbCount
	     << " BaseAddr id# " << baseCount
	     << " GEP count# " << (mi2->second).size() ;
      overallCount+=(mi2->second).size();

    }
  }
  errs() << "\nTotal GEP Count: " << overallCount;
  errs() << "\n\n\n";
}

void updateMasterDB(Function* fn, Module* M){
  unsigned gepCount=0;
  for (Function::iterator i = fn->begin(), e = fn->end(); i != e; ++i){
    BasicBlock* bb=&*i;
    for (BasicBlock::iterator bbi = bb->begin(), bbe = bb->end(); bbi != bbe; ++bbi){
      Instruction* currInstr=&*bbi;
      if(GetElementPtrInst* gep = dyn_cast<GetElementPtrInst>(currInstr)){
	if(!baseAdrHasDef(gep)){
	  gepCount++;
	  BasicBlock* bb=gep->getParent();
	  Value* baseadr=gep->getPointerOperand();
	  if(masterdb.find(bb)!=masterdb.end()){ // BB found
	    if(masterdb[bb].find(baseadr)!=masterdb[bb].end()){ // BASEADR found
	      masterdb[bb][baseadr].push_back(gep);
	    } else {
	      vector<GetElementPtrInst*> tmpgeplst;
	      tmpgeplst.push_back(gep);
	      masterdb[bb].insert(pair<Value*,
				  vector<GetElementPtrInst*> >(baseadr,tmpgeplst));
	    }
	  } else{
	    map<Value*, vector<GetElementPtrInst*> > tmpbsTogeplst;
	    vector<GetElementPtrInst*> tmpgeplst;
	    tmpgeplst.push_back(gep);
	    tmpbsTogeplst.insert(pair<Value*,
				 vector<GetElementPtrInst*> >(baseadr,tmpgeplst));
	    masterdb.insert(pair<BasicBlock*,map<Value*,
			    vector<GetElementPtrInst*> > >(bb,tmpbsTogeplst));
	  }
	}
      }	  
    }    
  }
}


void populategepid(Function* fn){
  unsigned id=0;
  for(inst_iterator I = inst_begin(fn), E = inst_end(fn); I != E; ++I){
    Instruction* currInstr=&*I;
    if(GetElementPtrInst* gep=dyn_cast<GetElementPtrInst>(currInstr)){
      if(geptoid.find(gep)==geptoid.end()){
	id++;		
	// errs() << "\nINFO Creating a new gep with id: " 
	// << id << "\n";
	geptoid.insert(pair<GetElementPtrInst*,unsigned>(gep,id));
	idtogep.insert(pair<unsigned,GetElementPtrInst*>(id,gep));
      }
    }
  }
}

string getFgPrint(Value* val, int num, string opstr){
  return opstr+toString(num)+(val->getName().str());
}

string getFgPrint(Value* val1, Value* val2, string opstr){
  return opstr+(val1->getName().str())+(val2->getName().str());
}


void insertLInv(Module *M){
  map<GetElementPtrInst*,GetElementPtrInst*>::iterator mi;
  for(mi=geptongep.begin();mi!=geptongep.end();++mi){
    GetElementPtrInst* gep=mi->first;
    GetElementPtrInst* ngep=mi->second;
    vector<Value*> relidxlst=getIdxLst(ngep);
    assert(relidxlst.size()==1);
    Value* relid=relidxlst[0];
    if(geptoid.find(gep)==geptoid.end()) continue;
    unsigned gepid=geptoid[gep];
    BasicBlock* parentbb=ngep->getParent();
    Instruction* termi=parentbb->getTerminator();
    Function* fn=parentbb->getParent();
    BasicBlock* entrybb=&fn->getEntryBlock();
    errs() << "\nINFO: old gep: \n" << *gep;
    errs() << "\nINFO: new gep: \n" << *ngep;
    errs() << "\nINFO: rel idx: \n" << *relid;

    if(gepidtolinv.find(gepid)==gepidtolinv.end())
      return;  
    vector<Value*> relidcmplst=gepidtolinv[gepid];
    vector<CmpInst*> cmplst;
    for(unsigned i=0;i<relidcmplst.size();i++){
      // Value* castlinv= CastInst::CreateZExtOrBitCast(relidcmplst[i],relid->getType(),"castlinv_",ngep);
      CmpInst* cmpops=CmpInst::Create(Instruction::ICmp,CmpInst::ICMP_NE,relid,relidcmplst[i],"chkrelid",ngep);
      // if(fnPsgRelid){
      // 	vector<Value*> arglist;
      // 	Type* int64ty=Type::getIntNTy(getGlobalContext(),64);
      // 	Value* gepidval=ConstantInt::ConstantInt::get(int64ty,gepid,false);
      // 	arglist.push_back(gepidval);
      // 	arglist.push_back(relid);
      // 	arglist.push_back(relidcmplst[i]);

      // 	CallInst::Create(fnPsgRelid,arglist,"",ngep);
      // }
      errs() << "\nINFO: linv : \n" << *relidcmplst[i];
      // errs() << "\nINFO: cast linv : \n" << *castlinv;
      errs() << "\nINFO: check relid: \n" << *cmpops;
      cmplst.push_back(cmpops);
    }
    if(cmplst.size()==0){ 
      return;
    }else if(cmplst.size()==1){
      setDetectFlagByIdx(cmplst[0],termi,0,M);    
      errs() << "\nINFO: det update: \n" << *cmplst[0] << "\n\n\n";
    }else if(cmplst.size()>1){
      Value* op1=cmplst[0];
      for(unsigned i=1;i<cmplst.size();i++){
	Value* op2=cmplst[i];
	BinaryOperator* chklinv=
	  BinaryOperator::Create(Instruction::BinaryOps::And,op1,
				 op2,"chklinv",ngep);
	op1=chklinv;
      }
      errs() << "\nINFO: det update: \n" << *op1 << "\n\n\n";
      setDetectFlagByIdx(op1,termi,0,M);
    }        
  }
}

void populateLInvInfo(Function *fn){
  map<unsigned,GetElementPtrInst*>::iterator mi;  
  for(mi=idtogep.begin();mi!=idtogep.end();++mi){
    unsigned gepid=mi->first;
    GetElementPtrInst* gep=mi->second;
    if(t1linv.find(gepid)==t1linv.end()) continue;
    // Function* fn=gep->getParent()->getParent();
    BasicBlock* entrybb=&fn->getEntryBlock();
    Instruction* nonphi=entrybb->getTerminator();
      //getFirstNonPHI();
    vector<Value*> relidcmplst;
    vector<vector<long long> > linvlst=t1linv[gepid];
    Type* int64ty=Type::getIntNTy(getGlobalContext(),64);

    for(unsigned j=0;j<linvlst.size();j++){
      vector<long long> linvdat=linvlst[j];
      long long dimid=linvdat[0];
      if(dimidtopoly.find(dimid)==dimidtopoly.end()) continue;

      // get variable terms of the polynomial
      vector<Value*> polyvars=dimidtopoly[dimid];

      // get coefficients of the polynomial
      vector<long long> coeflst;
      for(unsigned i=1;i<linvdat.size();i++){
	coeflst.push_back(linvdat[i]);
      }

      assert(polyvars.size()==(coeflst.size()-1));

      vector<Value*> pelst;
      // compute mul(var,coefficient)
      for(unsigned i=0;i<coeflst.size()-1;i++){
      	if(coeflst[i]==0) continue;
      	Value* polyvar=polyvars[i];
	string fg=getFgPrint(polyvar,coeflst[i],"mul");
	if(fgtoval.find(fg)==fgtoval.end()){
	  Value* polycof=
	    ConstantInt::get(polyvar->getType(),coeflst[i],false);
	  
	  BinaryOperator* pe=
	    BinaryOperator::Create(Instruction::BinaryOps::Mul,
				   polycof,polyvar,
				   StringRef("pe"),nonphi);
	  fgtoval.insert(pair<string,Value*>(fg,pe));
	  errs() << "\n" << *pe << "\n";
	  pelst.push_back(pe);
	} else {
	  //errs() << "\n" << *fgtoval[fg];
	  pelst.push_back(fgtoval[fg]);
	}
      }

      // handle polynomial's constant term
      if(coeflst[coeflst.size()-1]!=0){      
      	Value* peconst=
        ConstantInt::get(int64ty,coeflst[coeflst.size()-1],false);
      	pelst.push_back(peconst);
      }

      //add polynomial elements
      if(pelst.size()==0){
      	Value* relidcmpval=
      	  ConstantInt::get(int64ty,0,false);
      	relidcmplst.push_back(relidcmpval);
      } else if(pelst.size()==1) {
      	relidcmplst.push_back(pelst[0]);
      } else {
      	Value* op1=pelst[0];
      	for(unsigned i=1;i<pelst.size();i++){
      	  Value* op2=pelst[i];
	  string fg=getFgPrint(op1,op2,"add");
	  if(fgtoval.find(fg)==fgtoval.end()){
	    BinaryOperator* addp=
	      BinaryOperator::Create(Instruction::BinaryOps::Add,
				     op1,op2,
				     StringRef("addp"),nonphi);
	    op1=addp;
	  } else {
	    op1=fgtoval[fg];
	  }
      	}
      	relidcmplst.push_back(op1);
      }
    }
    
    if(gepidtolinv.find(gepid)==gepidtolinv.end()){
      gepidtolinv.insert(pair<unsigned,vector<Value*> >
			 (gepid,relidcmplst));
    }
  } 
}

void readPrfData(const char* fname){  
  fstream fin;  
  unsigned gepid;
  fin.open(fname,ios::in);
  while(fin >> gepid){
    errs() << "\nINFO: Processing GEP ID: " << gepid;
    if(idtogep.find(gepid)!=idtogep.end())
      errs() << "\nINFO: Reading LInv Data for GEP:\n" 
	     << *idtogep[gepid];

    string tmplt;
    long long dimid=-1;
    long long linvcount=0;
    fin >> tmplt >> linvcount;
    errs() << "\nINFO: Template used in the LInv: " 
	   << tmplt;
    errs() << "\nINFO: LInv Count is:  " 
	   << linvcount;
    for(unsigned i=0;i<linvcount;i++){
      long long dimid,a,b,c,d; 
      fin >> dimid >> a >> b >> c >> d;
      vector<long long> coeflst;
      coeflst.push_back(dimid);
      coeflst.push_back(a);
      coeflst.push_back(b);
      coeflst.push_back(c);
      coeflst.push_back(d);
      errs() << "\nINFO: dim id used by the linv: " 
	     << dimid;
      errs() << "\nINFO: Coefficient a = " << a;
      errs() << "\nINFO: Coefficient b = " << b;
      errs() << "\nINFO: Coefficient c = " << c;
      errs() << "\nINFO: Coefficient d = " << d << "\n\n";
      if(t1linv.find(gepid)!=t1linv.end()){
	t1linv[gepid].push_back(coeflst);
      } else {
	vector<vector<long long> > tmplst;
	tmplst.push_back(coeflst);
	t1linv.insert(pair<unsigned, vector<vector<long long> > >
		      (gepid,tmplst));
      }     
    }
  }
  errs() << "\nINFO: Number of entries in linv list are: " 
	 << t1linv.size() << "\n\n";
  fin.close();
}

void insertPolyEle(Function *fn){
  BasicBlock *entrybb=&fn->getEntryBlock();
  Instruction* nonphi=entrybb->getFirstNonPHI();
  map<long long,Value*>::iterator mi;
  for(mi=dimidtoref.begin();mi!=dimidtoref.end();++mi){
    vector<Value*> polylst;
    long long dimid=mi->first;
    Value* currdimref=mi->second;
    LoadInst* currdim=new LoadInst(currdimref,"dim"+toString(dimid)+"_",nonphi);
    BinaryOperator* dimsqr=
      BinaryOperator::Create(Instruction::BinaryOps::Mul,
			     currdim,currdim,
			     StringRef("dim"+toString(dimid)+"_sqr_"),nonphi);
    BinaryOperator* dimcub=
      BinaryOperator::Create(Instruction::BinaryOps::Mul,
			     dimsqr,currdim,
			     StringRef("dim"+toString(dimid)+"_cub_"),nonphi);
    polylst.push_back(dimcub);
    polylst.push_back(dimsqr);
    polylst.push_back(currdim);
    if(dimidtopoly.find(dimid)==dimidtopoly.end()){
      dimidtopoly.insert(pair<int,vector<Value*> >(dimid,polylst));
    }
  }
}

void printInstrCount(Function* fn){
  unsigned instcount=0;
  
  
  for (inst_iterator I=inst_begin(fn);
       I!=inst_end(fn);++I){
    Type::TypeID tyID = I->getType()->getTypeID();
    Type* ty=I->getType();

    if(ty->isIntegerTy(16) ||
       ty->isIntegerTy(32) ||
       ty->isIntegerTy(64) ||
       tyID==Type::FloatTyID   ||
       tyID==Type::DoubleTyID){
      if(isa<BinaryOperator>(&*I))
	instcount++;
    } else if(tyID==Type::VectorTyID){
      Type* ety=ty->getScalarType();
      Type::TypeID etyID = ety->getTypeID();
      if(ety->isIntegerTy(16) ||
	 ety->isIntegerTy(32) ||
	 ety->isIntegerTy(64) ||
	 etyID==Type::FloatTyID   ||
	 etyID==Type::DoubleTyID){
	if(isa<BinaryOperator>(&*I))
	  instcount++;
      }
    } else if(isa<StoreInst>(&*I)){
      instcount++;
    } else if(isa<GetElementPtrInst>(&*I)){
      instcount++;
    }
  }
  errs() << "\n\n======================================";
  errs() << "\n DIC : " << instcount << "\n";
  errs() << "======================================\n\n";

}

void populateDIMs(Module *M){
  Value* dim0= getGlobalVarByName(M,"dim0");  
  Value* dim1= getGlobalVarByName(M,"dim1");
  Value* dim2= getGlobalVarByName(M,"dim2");
  errs() << "\n" << *dim0 << "\n" << *dim1
	 << "\n" << *dim2;
  dimidtoref.insert(pair<long long,Value*>(0,dim0));
  dimidtoref.insert(pair<long long,Value*>(1,dim1));
  dimidtoref.insert(pair<long long,Value*>(2,dim2));
}


namespace {
  class Presage : public ModulePass{
  public:
    static char ID; 
    Presage() : ModulePass(ID) {}
    virtual bool runOnModule(Module &M){
      Module::FunctionListType &fnlist = M.getFunctionList();
      Function* targetfn=NULL;
      for (Module::iterator it = fnlist.begin(); it != fnlist.end(); ++it){
	string fnName=it->getName().str();
	if(isMangledName(fnName)){
	  string dmgFnName=getDemangledName(fnName);
	  if(dmgFnName.compare(fn)==0) targetfn= &*it;
	  if(dmgFnName.compare(psgProtectFnName)==0) fnPsgProtect=&*it;
	  if(dmgFnName.compare(psgProfileFnName)==0) fnPsgProfile=&*it;
	  if(dmgFnName.compare(psgRelidFnName)==0) fnPsgRelid=&*it; 	  
	} else{
	  if(fnName.compare(fn)==0) targetfn= &*it;
	  if(fnName.compare(psgProtectFnName)==0) fnPsgProtect=&*it;
	  if(fnName.compare(psgProfileFnName)==0) fnPsgProfile=&*it; 
	  if(fnName.compare(psgRelidFnName)==0) fnPsgRelid=&*it; 	  	  
	}		
      }
      

      if(!targetfn) return false;
      populategepid(targetfn);

      // if(mode.compare("detect")==0 ||
      // 	 mode.compare("detty2")==0){	
      // 	populateDIMs(&M);
      // 	insertPolyEle(targetfn);
      // 	readPrfData(flname.c_str());
      // 	populateLInvInfo(targetfn);      
      // }

      populateExitGEPInfo(targetfn,&M);
      populateBackEdgeInfo(targetfn,&M);
      populateEntryGEPInfo(targetfn,&M,1);
      populateEntryGEPInfo(targetfn,&M,2);
      populateEntryGEPInfo(targetfn,&M,3);
      updateMasterDB(targetfn,&M);
      processTransform(&M);      

      if(mode.compare("detect")==0 ||
      	 mode.compare("detty1")==0){
      	// insert detectors in all the exit basic blocks
      	insertDetectors(targetfn,&M);     	
      }

 
      // if(mode.compare("detect")==0 ||
      // 	 mode.compare("detty2")==0){	
      // 	insertLInv(&M);
      // }
      
      // erase the old GEPs
      while(!gepvlst.empty()){
      	gepvlst.back()->eraseFromParent();
      	gepvlst.pop_back();
      }      
      // printInstrCount(targetfn);
    }    
    ~Presage(){}
  };
}

char Presage::ID = 0;
static RegisterPass<Presage> X1("presage","Protect Strcutured Address Generation",false,false);
