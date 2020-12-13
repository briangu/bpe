BIN_DIR=bin

CC = gcc
#The -Ofast might not work with older versions of gcc; in that case, use -O2
CFLAGS = -lm -O2 -Wall -funroll-loops 

all: bin compress expand 

bin:
	mkdir -p ${BIN_DIR}
compress : compress.c
	$(CC) compress.c -o ${BIN_DIR}/compress $(CFLAGS)
expand : expand.c
	$(CC) expand.c -o ${BIN_DIR}/expand $(CFLAGS)

clean:
	pushd ${BIN_DIR} && rm -rf *; popd
