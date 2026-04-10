# ------------------------------------------------------------------------------
# Project: SDCC_EXAMPLE_CODE
# Toolchain: SDCC 4.2.0
# Make: GNU Make 3.77
#
# NOTE:
# If SDCC is not found, update SDCC_PATH variable below.
# ------------------------------------------------------------------------------
SDCC_PATH = "C:\Program Files\SDCC\bin\sdcc.exe" 
CC = $(SDCC_PATH)

all: bin/output.hex

# Link all .rel object files into final executable (.hex)
# --code-loc  : The start location of the user code segment
# --code-size : Causes the linker to check if the code memory usage is within limits of the given value
# --xram-loc  : The start location of the external ram (this is set to 0x0001 to avoid malloc failures if heap starts at 0x0000 )
# --xram-size : Total external RAM size
# --model-large : Generate code for Large model programs
# --out-fmt-ihx : Generate Intel HEX output format

bin/output.hex: bin/main.rel bin/_heap.rel bin/my_serial.rel
	$(CC) bin/main.rel bin/my_serial.rel bin/_heap.rel \
	--code-loc 0x2000 --code-size 0x6000 \
	--xram-loc 0x0001 --xram-size 0x7FFF \
	--model-large --out-fmt-ihx -o bin/output.hex

# Compile main application file
# -c        : --compile-only will compile and assemble the source, but will not call the linkage editor
# -mmcs51   : Generate code for the Intel MCS51 family of processors. This is the default processor target
# --model-large :  Generate code for Large model programs
# -I headers : Add headers directory to include path

bin/main.rel: src/main.c headers/my_serial.h
	$(CC) -c -mmcs51 --model-large -I headers src/main.c -o bin/main.rel

bin/_heap.rel: src/_heap.c
	$(CC) -c -mmcs51 --model-large -D HEAP_SIZE=1024 src/_heap.c -o bin/_heap.rel

bin/my_serial.rel: src/my_serial.c headers/my_serial.h
	$(CC) -c -mmcs51 --model-large -I headers src/my_serial.c -o  bin/my_serial.rel

# Delete all generated files from bin directory
clean:
	del /q bin\*.*