CC=gcc

all: qtl flipabit exhaustive_flipabit

qtl: -O0 src/qtl.c -o bin/qtl

flipabit: src/flipabit.c -o bin/flipabit

exhaustive_flipabit: src/exhaustive_flipabit.c -o bin/exhaustive_flipabit
