# Requires following variables to be initialized through command line
# VULFI_SRC_DIR

# Example specific variable initializations
# EX_NAME, FCP

#VULFI_SRC_DIR=$(HOME)/apps/tools/vulfi/master
EX_DIR = ../../../src/$(EX_NAME)
BUILD_DIR = $(EX_DIR)/bin

CMD1 = "64 result_noerror.dat"
OUT1 = "result_noerror.dat"

CMD1_ADDR = "64 result_error_addr.dat"
OUT1_ADDR = "result_error_addr.dat"

CMD2 = "64 result_noerror_psg.dat"
OUT2 = "result_noerror_psg.dat"

CMD2_ADDR = "64 result_error_psg.dat"
OUT2_ADDR = "result_error_psg.dat"

ex1:
	python $(VULFI_SRC_DIR)/scripts/driver.py -e -c $(FCP) \
	--exec1 $(BUILD_DIR)/$(EX_NAME) \
	--cmd1 $(CMD1) \
	--out1 $(OUT1) \
	--exec2 $(BUILD_DIR)/$(EX_NAME)_addr_inject \
	--cmd2 $(CMD1_ADDR) \
	--out2 $(OUT1_ADDR) \
	--iter 1 --pv --ff eql --fc 1 \
	--fia abr --fbu 63 --fbl 0 \
	--rslt result_$(EX_NAME)_addr.csv --ficsv fi.csv \
	--th 0.0
	rm -f *.in *.out *.dat *.ppm *~
	
ex2:
	python $(VULFI_SRC_DIR)/scripts/driver.py -e -c $(FCP) \
	--exec1 $(BUILD_DIR)/$(EX_NAME)_psg \
	--cmd1 $(CMD2) \
	--out1 $(OUT2) \
	--exec2 $(BUILD_DIR)/$(EX_NAME)_addr_ipsg \
	--cmd2 $(CMD2_ADDR) \
	--out2 $(OUT2_ADDR) \
	--iter 1 --pv --ff eql --fc 1 \
	--fia abr --fbu 63 --fbl 0 \
	--rslt result_$(EX_NAME)_addr_psg.csv --ficsv fi.csv \
	--th 0.0
	rm -f *.in *.out *.dat *.ppm *~

clean:
	rm -f *.csv *.in *.out *.dat *.ppm *~ *.txt
