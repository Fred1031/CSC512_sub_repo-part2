#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Type.h"
#include <fstream>
#include <vector>
#include <map>

using namespace llvm;
using namespace std;

namespace {

struct SkeletonPass : public PassInfoMixin<SkeletonPass> {

    // Data structures that support def-use relation
    vector<Value *> Users;
    vector<vector<Value *> > UserList;
    vector<vector<Value *> > fileUserList;

    map <Value *, bool> visited;
    map <Value *, int> var2id;
    map <int, Value *> id2var;
    map <int, Value *> id2inst;
    map <int, string> id2name;
    map <int, int> id2Line;


    vector <StringRef> id2fileName;
    vector <StringRef> id2fileMode;

    vector<int> id2fileLine;
    vector<Value *> fileStartPoint;

    int store_id = 0;
    map <Value *, int> store2id;
    vector<Value *> storeNext[1000];

    // Used for file I/O hard coding
    Value *fopenRetVal;
    
    int var_id = 0;

    void findDefUseRelation(Value *V) {
        if (visited.find(V) != visited.end() && visited[V] == true) 
            return;

        visited[V] = true;

        //outs() << "Def Use Relation for : " << *V << "\n";

        // Tranverse the intructions of this var
        for (auto *user : V->users()) {
            Users.push_back(user);
            //outs() << "Used by : " << *user << "\n";
            findDefUseRelation(user);
        }
    }

    void findFilePath(Value *V) {
        if (visited.find(V) != visited.end() && visited[V] == true)
            return;

        visited[V] = true;
        //outs() << "Def Use Relation for : " << *V << "\n";

        for (auto *user : V->users()) {
            Users.push_back(user);
            findFilePath(user);
        }

        if (!store2id.count(V)) return;

        for (int i = 0; i < storeNext[ store2id[V] ].size(); i ++) {
            Value *Next = storeNext[ store2id[V] ][i];
            Users.push_back(Next);
            findFilePath(Next);
        }
    }

    void findInputVar(Value *V) {

        for (int i = 0; i < var_id; i ++) {

            auto currentUsers = UserList[i];

            for (auto it = currentUsers.begin(); it != currentUsers.end(); it ++) {

                // Detected input feature
                if (*it == V) {
                    //outs() << "!!!!!! this is the input value" << *(id2var[i]) << "\n";

                    //outs() << " the " << i + 1 << "th input" << "\n"; 

                    outs() << "Line " << id2Line[i] <<  " : " << id2name[i] << '\n';


                    /*
                    if (DILocation *Loc = *(id2instr[i])) {
                        outs() << "Line " << Loc->getLine() << ":" << "\n";
                    }
                    */

                    break;
                }
            }

        }
    }

    void findFile(Value *V) {
        for (int i = 0; i < fileUserList.size(); i ++) {
            //outs() << "find file " << i << '\n';
            auto currentUsers = fileUserList[i];

            for (auto it = currentUsers.begin(); it != currentUsers.end(); it ++) {

                
                if (*it == V) {
                    // Hard coded file I/O behavior
                    if (strcmp(id2fileMode[i].str().c_str(), "r") == 0)
                        outs() << "Line " << id2fileLine[i] << ": size of file " << id2fileName[i] << '\n';
                    else
                        outs() << "Line " << id2fileLine[i] << ": existence of file " << id2fileName[i] << '\n'; 
                    //outs() << "Line " << id2fileLine[i] << ": size of file " << id2fileName[i] << '\n';
                }
            }
        }
    }

    PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM) {
        //Branch Trace directory file
        std::fstream dictFile("branch_dictionary.txt", std::ios::in | std::ios::out | std::ios::trunc);

        int branchID =1;

        for (auto &F : M.functions()) {
            //errs()<<F.getName()<<"\n";

            //get the LLVM context
            LLVMContext &Ctx = F.getContext();
            //define external function's parameter types, for function pointer should be getInt8PtrTy
            std::vector<Type*> paramTypesfunc = {Type::getInt8PtrTy(Ctx)};
            std::vector<Type*> paramTypesbr = {Type::getInt32Ty(Ctx)};
            //define external function's return value type
            Type *retTypefunc = Type::getVoidTy(Ctx);
            //create function type, false means this function is not variadic
            FunctionType *logFuncType = FunctionType::get(retTypefunc, paramTypesfunc, false);
            FunctionType *logBrType = FunctionType::get(retTypefunc, paramTypesbr, false);

            FunctionCallee logFunc =F.getParent()->getOrInsertFunction("logfunction", logFuncType);
            FunctionCallee logBr = F.getParent()->getOrInsertFunction("logbranch", logBrType);
            for (auto &B : F) {
                for (auto &I : B) {

                    
                    if (auto *callInst = dyn_cast<CallInst>(&I)) {
                        if (auto *calledFunction = callInst -> getCalledFunction()) {

                            // Deals with the general scanf input
                            if (calledFunction -> getName() == "__isoc99_scanf") {

                                DebugLoc debugLoc = I.getDebugLoc();
                                if (!debugLoc) {
                                    errs() << "False " << I << "\n";
                                }
                                #ifdef DEBUG
                                errs() << "Line " << debugLoc.getLine() << " : \n";
                                #endif

                                // Get scanf parameter list ([2, numArgs])
                                unsigned numArgs = callInst->getNumOperands() - 1;
                                #ifdef DEBUG
                                outs() << "total number of var : " << numArgs << "\n";
                                #endif

                                for (unsigned i = 1; i < numArgs; i ++) {
                                    Value *inputVar = callInst -> getArgOperand(i);


                                    //outs() << "scanf Input Variable: " << *inputVar << "\n";

                                    // This is the place to get the input features.
                                    if (llvm::PointerType *pointerType = llvm::dyn_cast<llvm::PointerType>(inputVar->getType())) {
                                        llvm::Value *underlyingObject = inputVar->stripPointerCasts();

                                        llvm::Type *argType = underlyingObject->getType();
                                        //llvm::outs() << "Argument [] " << i << " has type: " << *argType << "\n";

                                        if (llvm::AllocaInst *allocaInst = llvm::dyn_cast<llvm::AllocaInst>(underlyingObject)) {
                                            Type *varType = allocaInst->getAllocatedType();
                                            //outs() << "Variable type !!!! : " << *varType << "\n";
                                            //outs() << "Variable name: " << allocaInst->getName() << "\n";


                                        }
                                    }


                                    Type *inputType = inputVar -> getType();

                                    #ifdef DEBUG
                                    outs() << "Operand " << i << " has type: " << *inputType << "\n";

                                    //Type *elementType = inputType -> getArrayElementType();

                                    outs() << "Argument " << i << " corresponds to C variable: " << inputVar->getName() << "\n";
                                    #endif

                                    // DFS for Def-Use relation detection
                                    Users.clear();
                                    visited.clear();
                                    findDefUseRelation(inputVar);

                                    id2inst[var_id] = callInst;
                                    id2var[var_id] = inputVar;
                                    id2name[var_id] = inputVar->getName();
                                    id2Line[var_id] = debugLoc.getLine(); 
                                    var2id[inputVar] = var_id++;
                                    UserList.push_back(Users);
                                }
                            } else if (calledFunction -> getName() == "fopen") {
                                Value *returnValue = callInst;
                                outs() << *returnValue << '\n';

                                #ifdef DEBUG
                                if (returnValue->getType()->isPointerTy()) { // &&
                                    //returnValue->getType()->getArrayElementType()->isIntegerTy(8)) {
                                    errs() << "fopen return value is stored in: " << *returnValue << "\n";
                                } 
                                #endif

                                Value *fileArg = callInst -> getArgOperand(0);
                                Value *modeArg = callInst -> getArgOperand(1);

                                //errs() << "this is the mode" << *modeArg << '\n';

                                // Convert filenameArg to a string

                                // Check if it's a pointer
                                if (isa<PointerType>(modeArg->getType())) {
                                    // Assuming it's a pointer, you can further analyze
                                    // For example, check if it's a null pointer
                                    if (ConstantPointerNull *nullPtr = dyn_cast<ConstantPointerNull>(modeArg)) {
                                        errs() << "fopen mode argument: null pointer\n";
                                    } else if (GlobalVariable *GV = dyn_cast<GlobalVariable>(modeArg)) {
                                        if (ConstantDataArray *CDA = dyn_cast<ConstantDataArray>(GV->getInitializer())) {
                                            StringRef modeStr = CDA->getAsString().trim();
                                            //errs() << "fopen mode argument: " << modeStr << "\n";
                                            //errs() << modeStr.str() << "\n";
                                            std::string myString = modeStr.str();


                                            // Store the file properties
                                            id2fileMode.push_back(modeStr);

                                        }
                                        
                                    }
                                }


                                fileStartPoint.push_back(returnValue);

                                fopenRetVal = callInst;


                                
                                DebugLoc debugLoc = I.getDebugLoc();
                                if (!debugLoc) {
                                    errs() << "False " << I << "\n";
                                }
                                #ifdef DEBUG
                                errs() << "Line " << debugLoc.getLine() << " : \n";
                                #endif
                                id2fileLine.push_back(debugLoc.getLine());
                            }
                        }
                    }

                    if (StoreInst *storeInst = dyn_cast<StoreInst>(&I)) {
                        Value *storedValue = storeInst -> getOperand(0);
                        Value *storedPointer = storeInst -> getOperand(1);

                        if (!store2id.count(storedValue))
                            store2id[storedValue] = store_id ++;

                        storeNext[ store2id[storedValue] ].push_back(storedPointer);

                        if (fopenRetVal) {

                            Value *storePointer = storeInst->getPointerOperand();
                            id2fileName.push_back(storePointer->getName());

                            #ifdef DEBUG
                            outs() << "name file  : " << storePointer->getName();
                            #endif

                            fopenRetVal = NULL;

                        }
                    }


                }
            }


        }

        for (int i = 0; i < fileStartPoint.size(); i ++) {
        
            Users.clear();
            visited.clear();
            findFilePath(fileStartPoint[i]);
            fileUserList.push_back(Users);

        }

        for (auto &F : M.functions()) {
            LLVMContext &Ctx = F.getContext();
            //define external function's parameter types, for function pointer should be getInt8PtrTy
            std::vector<Type*> paramTypesfunc = {Type::getInt8PtrTy(Ctx)};
            std::vector<Type*> paramTypesbr = {Type::getInt32Ty(Ctx)};
            //define external function's return value type
            Type *retTypefunc = Type::getVoidTy(Ctx);
            //create function type, false means this function is not variadic
            FunctionType *logFuncType = FunctionType::get(retTypefunc, paramTypesfunc, false);
            FunctionType *logBrType = FunctionType::get(retTypefunc, paramTypesbr, false);

            FunctionCallee logFunc =F.getParent()->getOrInsertFunction("logfunction", logFuncType);
            FunctionCallee logBr = F.getParent()->getOrInsertFunction("logbranch", logBrType);
            for (auto &B : F) {
                for (auto &I : B) {
                        if (auto *brinst = dyn_cast<BranchInst>(&I)) {
                            //check if instruction is conditional
                            if(brinst->isConditional()){

                                DebugLoc debugLoc = I.getDebugLoc();
                                if (!debugLoc) {
                                    errs() << "False " << I << "\n";
                                }
                                //errs() << " instruction " << debugLoc.getLine() << "\n";

                                if (DILocation *Loc = I.getDebugLoc()) { 
                                    //errs() << "branch id " << branchID << "\n";
                                    //brinst->print(llvm::outs());
                                    //errs() << "\n";

                                    for (unsigned int i = 0; i < brinst->getNumOperands(); i ++) {
                                        Value *operand = brinst->getOperand(i);

                                        //outs() << "Operand " << i << ": " << *operand << "\n";

                                    }
                                    // Get var
                                    Value *var = brinst->getOperand(0);
                                    findInputVar(var);
                                    // Hardcoding for file I/O
                                    findFile(var);

                                    for (unsigned int i = 0; i < brinst->getNumSuccessors(); ++i) {

                                        BasicBlock *succ = brinst->getSuccessor(i);

                                        if (!succ->empty()){

                                            DILocation *succLoc = succ->front().getDebugLoc();
                                            errs() << "br_" << branchID << ": " << Loc->getFilename().str() << ", " << Loc->getLine() << ", " << succLoc->getLine() << "\n";
                                            dictFile << "br_" << branchID << ": " << Loc->getFilename().str() << ", " << Loc->getLine() << ", " << succLoc->getLine() << "\n";
                                            branchID++;

                                            IRBuilder<> Builder(Ctx);
                                            /*
                                            Builder.SetInsertPoint(&(succ->front()));
                                            
                                            Builder.CreateCall(logBr, {ConstantInt::get(Type::getInt32Ty(Ctx), branchID)});
                                            */
                                        }                   
                                    }
                                }                           
                            }
                    }


                    if(auto *funcp = dyn_cast<CallInst>(&I)){
                        
                        if(!funcp->getCalledFunction()){
                            //errs()<<*funcp<<"\n";
                            IRBuilder<> Builder(funcp);

                            Value *callpointer = funcp->getCalledOperand();
                            Builder.CreateCall(logFunc, callpointer);
                        }
                        
                    }
                    //errs()<<I<<"\n";
                }
            }
        }


    dictFile.close();
    
    fileUserList.clear();

    return PreservedAnalyses::none();
    };

};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {
        .APIVersion = LLVM_PLUGIN_API_VERSION,
        .PluginName = "Skeleton pass",
        .PluginVersion = "v0.1",
        .RegisterPassBuilderCallbacks = [](PassBuilder &PB) {
            PB.registerPipelineStartEPCallback(
                [](ModulePassManager &MPM, OptimizationLevel Level) {
                    MPM.addPass(SkeletonPass());
                });
        }
    };
}
