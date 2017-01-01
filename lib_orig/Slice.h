#pragma once

// c++ system headers
#include <climits>

#include <string>
#include <cxxabi.h>
#include <set>
#include <map>
#include <fstream>
#include <sstream>

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

using namespace llvm;
using namespace std;

class Slice {
 public:
  Slice();
  void fillExtdLists(Instruction* instr);
  map<Instruction*,set<Instruction*> >
    &getExtdUseDefList(void){return this->extdUseDefList;}
  map<Instruction*,set<Instruction*> >
    &getExtdDefUseList(void){return this->extdDefUseList;}
  
 private:
//  bool isTerminalNode(Instruction* node);
  double rank;
  void traverseGraph(Instruction* node);
//  void traverseGraph(Instruction* node, ofstream& fout, map<string,int>& edge);
  set<Instruction*> visitedNodes;
  map<Instruction*,set<Instruction*> > extdUseDefList;
  map<Instruction*,set<Instruction*> > extdDefUseList;
};



