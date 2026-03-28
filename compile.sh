#!/bin/sh -x
# python--\>c
cd build
cython --embed ../where.pyx -o where.c
# echo c--\>binary
gcc -Ofast $(python3-config --includes) where.c $(python3-config --libs) -lpython3.14 -lpthread -lm -lutil -ldl -o where


