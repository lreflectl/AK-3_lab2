#!/bin/bash

#cleaning old files
#rm -vf start *.o

#creating object file
as -g -mfpu=vfpv2 -o start.o start.s

#compiling with gcc
gcc -o start start.o
