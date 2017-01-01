#include "Slice.h"

using namespace llvm;
using namespace std;

Slice::Slice(){
  this->rank = 0.0;
}

void Slice::fillExtdLists(Instruction* instr){
    // get forward and backward slice for each instruction in the instrlist
    // extdDefUseList -> forward slice
    // extdUseDefList -> backward slice
    this->visitedNodes.clear();
    traverseGraph(instr);
    if(!this->visitedNodes.empty()){
      set<Instruction*>  users;
      // From VisitedNodes save Instruction and its typeID into Users
      for(set<Instruction*>::iterator si1=this->visitedNodes.begin();
    		  si1!=this->visitedNodes.end();++si1){
    	  if(users.find(*si1) == users.end()){
    		  users.insert(*si1);
    	  }
      }

      if(this->extdDefUseList.find(instr) == this->extdDefUseList.end()){
    	  this->extdDefUseList.insert(pair<Instruction*,
    	  set<Instruction*> >(instr,users));
      }

      for(set<Instruction*>::iterator si1=users.begin();
	  si1!=users.end();++si1){
    	  if(this->extdUseDefList.find(*si1) == this->extdUseDefList.end()){
    		  set<Instruction*> tempDef;
    		  tempDef.insert(instr);
    		  this->extdUseDefList.insert(pair<Instruction*,
				      set<Instruction*> >(*si1,tempDef));
    	  } else{
    		  extdUseDefList[*si1].insert(instr);
    	  }
      }
    }
    this->visitedNodes.clear();
    return;
}


//void Slice::traverseGraph(Instruction* node, ofstream& fout, map<string,int>& edge){
//  if (node == NULL || this->isTerminalNode(node)){
//    return;
//  }
//
//  for(Value::use_iterator ui = node->use_begin();ui != node->use_end(); ++ui){
//    Instruction* currentUser = dyn_cast<Instruction>(*ui);
//    if(currentUser){
//      // Recursively visit nodes not visited earlier and add them to
//      // visitedNodes list
//      string wrtline = "\"" + Common::instrToString(node) + "\" -> \"" + Common::instrToString(currentUser) + "\";\n";
//      if(edge.find(wrtline) == edge.end()){
//    	  string opname1(node->getOpcodeName());
//    	  fout << wrtline;
//    	  edge.insert(pair<string,int>(wrtline,1));
//    	  traverseGraph(currentUser,fout,edge);
//      }
//    }
//  }
//  return;
//}

void Slice::traverseGraph(Instruction* node){
  if (node == NULL){
    return;
  }

  for(Value::use_iterator ui = node->use_begin();ui != node->use_end(); ++ui){
    Instruction* currentUser = dyn_cast<Instruction>(*ui);
    if(currentUser){
      // Recursively visit nodes not visited earlier and add them to
      // visitedNodes list
      if(this->visitedNodes.find(currentUser) == this->visitedNodes.end()){
	this->visitedNodes.insert(currentUser);
	#ifdef DEBUG
	errs() << "\nVisited Node: " << *currentUser;
	#endif
	traverseGraph(currentUser);
      }
    }
  }
  return;
}

//bool Slice::isTerminalNode(Instruction* node){
////  if (isSelectInstr(node) || isMaskedControlInstr(node) ||
////      isMaskedLoad(node) || isMaskedStore(node)){
////    return true;
////  }
//  return false;
//}
