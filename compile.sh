#!/bin/sh -x
# python--\>c
cython --embed where.pyx -o .where.c.c
# echo c--\>binary
gcc -Ofast $(python3-config --includes) .where.c.c $(python3-config --libs) -lpython3.14 -lpthread -lm -lutil -ldl -o build/where


