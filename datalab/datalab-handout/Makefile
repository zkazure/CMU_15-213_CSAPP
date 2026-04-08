#
# Makefile that builds btest and other helper programs for the CS:APP data lab
#
CC = gcc
# -Wno-bool-operation: GCC warns on ~(!!x); Data Lab code intentionally uses ~ on 0/1.
CFLAGS = -O1 -Wall -m32 -Wno-bool-operation -Wno-maybe-uninitialized
LIBS = -lm

all: btest fshow ishow

btest: btest.c bits.c decl.c tests.c btest.h bits.h
	$(CC) $(CFLAGS) $(LIBS) -o ./build/btest bits.c btest.c decl.c tests.c

fshow: fshow.c
	$(CC) $(CFLAGS) -o ./build/fshow fshow.c

ishow: ishow.c
	$(CC) $(CFLAGS) -o ./build/ishow ishow.c

# Forces a recompile. Used by the driver program.
btestexplicit:
	$(CC) $(CFLAGS) $(LIBS) -o ./build/btest bits.c btest.c decl.c tests.c

clean:
	rm -f *.o ./build/*~
