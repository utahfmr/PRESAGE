CXX=clang++
CC=clang
CXX_FLAGS=-O1 -fno-inline

BUILD_DIR=./bin
#VULFI_LIB_DIR=/usr/local/lib
#PSG_SRC_DIR=$(HOME)/apps/presage
EX_SRC=$(PSG_SRC_DIR)/examples/src
#VULFI_SRC_DIR=$(HOME)/apps/tools/vulfi/master
INCLUDE_DIRS=-I$(VULFI_SRC_DIR)/runtime/ -I$(EX_SRC)/polybench/utilities \
-I$(PSG_SRC_DIR)/include

LIBS = -lm

all: mkd exe

#exe: exe_org exe_ori_gep exe_ori_idx exe_prf exe_pri_gep exe_pri_idx \
exe_dtr exe_dtr_ty1 exe_dtr_ty2 exe_dti_gep exe_dti_idx

exe: exe_org exe_ori_gep exe_dti_gep

mkd: 
	mkdir -p $(BUILD_DIR)

# bitcode for Presage Runtime
bc_prt: 
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) \
	$(PSG_SRC_DIR)/runtime/PresageRT.C \
	-emit-llvm -c -o $(BUILD_DIR)/PresageRT.bc

# bitcode for Corrupt
bc_crp: 
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) \
	$(VULFI_SRC_DIR)/runtime/Corrupt.C \
	-emit-llvm -c -o $(BUILD_DIR)/Corrupt.bc

# bitcode for Utility
bc_utl: 
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) \
	$(EX_SRC)/polybench/utilities/Utility.c \
	-emit-llvm -c -o $(BUILD_DIR)/Utility.bc

# temp example bitcode w/o INST flag 
bc_et1: 
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) -emit-llvm $(EX_FILE) \
	-c -o $(BUILD_DIR)/$(EX_NAME)_temp.bc

# final example bitcode w/o INST flag 
bc_exp: bc_utl bc_crp bc_prt bc_et1
	llvm-link $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/Utility.bc \
	$(BUILD_DIR)/PresageRT.bc \
	$(BUILD_DIR)/$(EX_NAME)_temp.bc \
	-o $(BUILD_DIR)/$(EX_NAME).bc

# temp example bit-code w/ INST flag 
bc_et2: 
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) -DINST -emit-llvm \
	$(EX_FILE) -c -o $(BUILD_DIR)/$(EX_NAME)_inst_temp.bc
	
# final example bitcode w/ INST flag 
bc_exi: bc_utl bc_crp bc_prt bc_et2
	llvm-link $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/Utility.bc \
	$(BUILD_DIR)/PresageRT.bc \
	$(BUILD_DIR)/$(EX_NAME)_inst_temp.bc \
	-o $(BUILD_DIR)/$(EX_NAME)_inst.bc	


# final bitcode w/ PRESAGE profilers inserted 
bc_prf: bc_exp
	opt -load $(PSG_LIB_DIR)/LLVMPresage.so -presage -fn $(FN_LIST) \
	-fl "noerror" -mode "profile" -bcn $(BCNAME) \
	< $(BUILD_DIR)/$(EX_NAME).bc > \
	$(BUILD_DIR)/$(EX_NAME)_prf.bc	

# final bitcode w/ PRESAGE detectors inserted
bc_dtr: bc_exp
	opt -load $(PSG_LIB_DIR)/LLVMPresage.so -presage -fn $(FN_LIST) \
	-fl $(PRF_FL) -mode "detect" -bcn $(BCNAME) \
	< $(BUILD_DIR)/$(EX_NAME).bc > \
	$(BUILD_DIR)/$(EX_NAME)_dtr.bc	
	
bc_dtr_ty1: bc_exp
	opt -load $(PSG_LIB_DIR)/LLVMPresage.so -presage -fn $(FN_LIST) \
	-fl $(PRF_FL) -mode "detty1" -bcn $(BCNAME) \
	< $(BUILD_DIR)/$(EX_NAME).bc > \
	$(BUILD_DIR)/$(EX_NAME)_dtr_ty1.bc	
	
bc_dtr_ty2: bc_exp
	opt -load $(PSG_LIB_DIR)/LLVMPresage.so -presage -fn $(FN_LIST) \
	-fl $(PRF_FL) -mode "detty2" -bcn $(BCNAME) \
	< $(BUILD_DIR)/$(EX_NAME).bc > \
	$(BUILD_DIR)/$(EX_NAME)_dtr_ty2.bc	
	

# PRESAGE profilers inserted in example bitcode w/ INST Flag
bc_prc: bc_exi
	opt -load $(PSG_LIB_DIR)/LLVMPresage.so -presage -fn $(FN_LIST) \
	-bbn $(BB_LIST) -fl "error"  -mode "profile" -bcn $(BCNAME) \
	< $(BUILD_DIR)/$(EX_NAME)_inst.bc > \
	$(BUILD_DIR)/$(EX_NAME)_psc.bc

# PRESAGE detectors inserted in example bitcode w/ INST Flag
bc_dtc: bc_exi
	opt -load $(PSG_LIB_DIR)/LLVMPresage.so -presage -fn $(FN_LIST) \
	-bbn $(BB_LIST) -fl $(PRF_FL) -mode "detect" -bcn $(BCNAME) \
	< $(BUILD_DIR)/$(EX_NAME)_inst.bc > \
	$(BUILD_DIR)/$(EX_NAME)_dtc.bc
	
# final example bitcode w/ VULFI w/ GEP fault sites
bc_ori_gep: bc_exi
	opt -load $(VULFI_INSTALL_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addg" -lang "C" -dbgf "dbgData_"$(EX_NAME)"_org_gep.csv" < \
	$(BUILD_DIR)/$(EX_NAME)_inst.bc > \
	$(BUILD_DIR)/$(EX_NAME)_ori_gep.bc
	
# final example bitcode w/ VULFI w/ IDX fault sites	
bc_ori_idx: bc_exi
	opt -load $(VULFI_INSTALL_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addi" -lang "C" -dbgf "dbgData_"$(EX_NAME)"_org_idx.csv" < \
	$(BUILD_DIR)/$(EX_NAME)_inst.bc > \
	$(BUILD_DIR)/$(EX_NAME)_ori_idx.bc

# final example bitcode w/ PRESAGE profilers & VULFI w/ GEP fault sites
bc_pri_gep: bc_prc
	opt -load $(VULFI_INSTALL_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addg" -lang "C" -dbgf "dbgData_"$(EX_NAME)"_prf_gep.csv" \
	< $(BUILD_DIR)/$(EX_NAME)_psc.bc > \
	$(BUILD_DIR)/$(EX_NAME)_pri_gep.bc
	
# final example bitcode w/ PRESAGE profilers & VULFI w/ IDX fault sites	
bc_pri_idx: bc_prc
	opt -load $(VULFI_INSTALL_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addi" -lang "C" -dbgf "dbgData_"$(EX_NAME)"_prf_idx.csv" \
	< $(BUILD_DIR)/$(EX_NAME)_psc.bc > \
	$(BUILD_DIR)/$(EX_NAME)_pri_idx.bc

# final example bitcode w/ PRESAGE detectors & VULFI w/ GEP fault sites
bc_dti_gep: bc_dtc
	opt -load $(VULFI_INSTALL_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addg" -lang "C" -dbgf "dbgData_"$(EX_NAME)"_dtr_gep.csv" \
	 < $(BUILD_DIR)/$(EX_NAME)_dtc.bc > \
	$(BUILD_DIR)/$(EX_NAME)_dti_gep.bc
	
# final example bitcode w/ PRESAGE detectors & VULFI w/ IDX fault sites
bc_dti_idx: bc_dtc
	opt -load $(VULFI_INSTALL_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addi" -lang "C" -dbgf "dbgData_"$(EX_NAME)"_dtr_idx.csv" \
	 < $(BUILD_DIR)/$(EX_NAME)_dtc.bc > \
	$(BUILD_DIR)/$(EX_NAME)_dti_idx.bc
	

#~ ir_dmp:
#~ 	llvm-dis $(BUILD_DIR)/$(EX_NAME).bc -o $(BUILD_DIR)/$(EX_NAME).ll
#~ 	llvm-dis $(BUILD_DIR)/$(EX_NAME)_psg_prf.bc -o $(BUILD_DIR)/$(EX_NAME)_prf.ll
#~ 	llvm-dis $(BUILD_DIR)/$(EX_NAME)_psg_dtr.bc -o $(BUILD_DIR)/$(EX_NAME)_dtr.ll
#~ 	objdump -d $(BUILD_DIR)/$(EX_NAME) > $(BUILD_DIR)/$(EX_NAME).s
#~ 	objdump -d $(BUILD_DIR)/$(EX_NAME)_psg_dtr > $(BUILD_DIR)/$(EX_NAME)_dtr.s
#~ 	objdump -d $(BUILD_DIR)/$(EX_NAME)_"addr"_ipsg_dtr > $(BUILD_DIR)/$(EX_NAME)_idtr.s
#~ 	objdump -d $(BUILD_DIR)/$(EX_NAME)_"addr"_inject > $(BUILD_DIR)/$(EX_NAME)_inject.s

exe_org: bc_exp
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME).bc -o \
	$(BUILD_DIR)/$(EX_NAME) $(LIBS)

exe_ori_gep: bc_ori_gep
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_ori_gep.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_ori_gep $(LIBS)
	
exe_ori_idx: bc_ori_idx
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_ori_idx.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_ori_idx $(LIBS)

exe_prf: bc_prf
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_prf.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_prf $(LIBS)

exe_pri_gep: bc_pri_gep
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_pri_gep.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_pri_gep $(LIBS)
	
exe_pri_idx: bc_pri_idx
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_pri_idx.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_pri_idx $(LIBS)

exe_dtr: bc_dtr
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_dtr.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_dtr $(LIBS)
	
exe_dtr_ty1: bc_dtr_ty1
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_dtr_ty1.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_dtr_ty1 $(LIBS)
	
exe_dtr_ty2: bc_dtr_ty2
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_dtr_ty2.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_dtr_ty2 $(LIBS)
	
exe_dti_gep: bc_dti_gep
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_dti_gep.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_dti_gep $(LIBS)
	
exe_dti_idx: bc_dti_idx
	$(CC) $(CXX_FLAGS)  \
	$(BUILD_DIR)/$(EX_NAME)_dti_idx.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_dti_idx $(LIBS)
	
clean:
	rm -rf $(BUILD_DIR)
	rm -f *~ *.cloog *.txt *.csv *.db
	
