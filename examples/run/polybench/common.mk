# Requires following variables to be initialized through command line
# VULFI_SRC_DIR

# Example specific variable initializations
# EX_NAME, FCP

VULFI_SRC_DIR=$(HOME)/apps/tools/vulfi/master
EX_DIR = $(HOME)/apps/presage/examples/src/polybench/$(CAT_NAME)/$(EX_NAME)
BUILD_DIR = $(EX_DIR)/bin
CMD1="$(C1)"
OUT1="$(O1)"
CMD2="$(C2)"
OUT2="$(O2)"


ex_ori_gep:
	python $(VULFI_SRC_DIR)/scripts/driver.py -e -c --fcp $(FCP) \
	--exec1 $(BUILD_DIR)/$(EX_NAME) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EX_NAME)_ori_gep \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter 1 --pv --ff eql --fc 1 \
	--fia abr --fbu 63 --fbl 0 \
	--rslt result_$(EX_NAME)_ori_gep.csv --ficsv fi.csv \
	--th 0.0
	rm -f *.in *.out *.dat *.ppm *~
	
ex_ori_idx:
	python $(VULFI_SRC_DIR)/scripts/driver.py -e -c --fcp $(FCP) \
	--exec1 $(BUILD_DIR)/$(EX_NAME) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EX_NAME)_ori_idx \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter 1 --pv --ff eql --fc 1 \
	--fia abr --fbu 63 --fbl 0 \
	--rslt result_$(EX_NAME)_ori_idx.csv --ficsv fi.csv \
	--th 0.0
	rm -f *.in *.out *.dat *.ppm *~
	
ex_dti_gep:
	python $(VULFI_SRC_DIR)/scripts/driver.py -e -c --fcp $(FCP) \
	--exec1 $(BUILD_DIR)/$(EX_NAME) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EX_NAME)_dti_gep \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter 1 --pv --ff eql --fc 1 \
	--fia abr --fbu 63 --fbl 0 \
	--rslt result_$(EX_NAME)_dti_gep.csv --ficsv fi.csv \
	--th 0.0
	rm -f *.in *.out *.dat *.ppm *~
	
ex_dti_idx:
	python $(VULFI_SRC_DIR)/scripts/driver.py -e -c --fcp $(FCP) \
	--exec1 $(BUILD_DIR)/$(EX_NAME) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EX_NAME)_dti_idx \
	--cmd2 $(CMD2) \
	--out2 $(OUT2) \
	--iter 1 --pv --ff eql --fc 1 \
	--fia abr --fbu 63 --fbl 0 \
	--rslt result_$(EX_NAME)_dti_idx.csv --ficsv fi.csv \
	--th 0.0
	rm -f *.in *.out *.dat *.ppm *~
	


clean:
	rm -f *.csv *.in *.out *.dat *.ppm *~ *.txt *.db
