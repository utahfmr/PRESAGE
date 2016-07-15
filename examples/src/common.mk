CXX=clang++
CC=clang
CXX_FLAGS= -std=c++11 -O3 -fno-inline
BUILD_DIR=./bin
VULFI_LIB_DIR=/usr/local/lib
VULFI_SRC_DIR=$(HOME)/apps/tools/vulfi/master
INCLUDE_DIRS=-I$(VULFI_SRC_DIR)/runtime/ -I$(HOME)/apps/presage/examples/src/polybench/
LIBS = -lm

all: mkd exe1 exe2 exe3 exe4

mkd: 
	mkdir -p $(BUILD_DIR)

bc1: $(VULFI_SRC_DIR)/runtime/Corrupt.C
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) $(VULFI_SRC_DIR)/runtime/Corrupt.C \
	-emit-llvm -g -c -o $(BUILD_DIR)/Corrupt.bc
	
bc_temp: $(EX_FILE)
	$(CC) $(CXX_FLAGS) -emit-llvm $(EX_FILE) -c -o $(BUILD_DIR)/$(EX_NAME)_temp.bc

bcu: $(HOME)/apps/presage/examples/src/polybench/utilities/utility.c
	$(CC) $(CXX_FLAGS) $(INCLUDE_DIRS) \
	$(HOME)/apps/presage/examples/src/polybench/utilities/utility.c \
	-emit-llvm -c -o $(BUILD_DIR)/utility.bc
	
bc2: bcu bc1 bc_temp
	llvm-link $(BUILD_DIR)/utility.bc $(BUILD_DIR)/Corrupt.bc \
	$(BUILD_DIR)/$(EX_NAME)_temp.bc -o $(BUILD_DIR)/$(EX_NAME).bc

	
bc3_temp: $(EX_FILE)
	$(CC) $(CXX_FLAGS) -DINST -emit-llvm $(EX_FILE) -c -o \
	$(BUILD_DIR)/$(EX_NAME)_inst_temp.bc
	
bc3: bcu bc3_temp
	llvm-link $(BUILD_DIR)/utility.bc $(BUILD_DIR)/$(EX_NAME)_inst_temp.bc \
	-o $(BUILD_DIR)/$(EX_NAME)_inst.bc
	
bc4: bc2
	opt -load /usr/local/lib/LLVMPresage.so -presage -fn "mm" -bbn "test" \
	-fl "_psg_noerror.txt" < $(BUILD_DIR)/$(EX_NAME).bc > $(BUILD_DIR)/$(EX_NAME)_psg.bc	

ln1: bc1 bc3
	llvm-link $(BUILD_DIR)/Corrupt.bc $(BUILD_DIR)/$(EX_NAME)_inst.bc \
	-o $(BUILD_DIR)/$(EX_NAME)_crpt.bc

bc5: ln1
	opt -load /usr/local/lib/LLVMPresage.so -presage -fn "mm" -bbn "test" \
	-fl "_psg_error.txt" < $(BUILD_DIR)/$(EX_NAME)_crpt.bc > \
	$(BUILD_DIR)/$(EX_NAME)_cpsg.bc

bc6: ln1
	opt -load $(VULFI_LIB_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addr" -lang "C++" -dbgf "dbgData_"$(EX_NAME)"_addr.csv" < \
	$(BUILD_DIR)/$(EX_NAME)_crpt.bc > \
	$(BUILD_DIR)/$(EX_NAME)_"addr"_inject.bc
	
bc7: bc5
	opt -load $(VULFI_LIB_DIR)/LLVMVulfi.so -vulfi -fn $(FN_LIST) \
	-fsa "addr" -lang "C++" -dbgf "dbgData_"$(EX_NAME)"_addr_psg.csv" < \
	$(BUILD_DIR)/$(EX_NAME)_cpsg.bc > \
	$(BUILD_DIR)/$(EX_NAME)_"addr"_ipsg.bc

exe1: bc2
	$(CC) $(CXX_FLAGS) $(BUILD_DIR)/$(EX_NAME).bc -o \
	$(BUILD_DIR)/$(EX_NAME) $(LIBS)

exe2: bc4
	$(CC) $(CXX_FLAGS) $(BUILD_DIR)/$(EX_NAME)_psg.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_psg $(LIBS)
	
exe3: bc6
	$(CC) $(CXX_FLAGS) $(BUILD_DIR)/$(EX_NAME)_"addr"_inject.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_"addr"_inject $(LIBS)
	
exe4: bc7
	$(CC) $(CXX_FLAGS) $(BUILD_DIR)/$(EX_NAME)_"addr"_ipsg.bc -o \
	$(BUILD_DIR)/$(EX_NAME)_"addr"_ipsg $(LIBS)
	
clean:
	rm -rf $(BUILD_DIR)
	rm -f *~	
