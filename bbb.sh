#!/bin/bash

for i in 1 2 3 4
do
for j in 3 4 5
do
make
make run
make clean
mv Cell.cpp Cell.txt;
let ja=$j+1
let jb=2**$j
let jc=2**$ja
sed -i 's/'shiftconductancelevel=$jb'/'shiftconductancelevel=$jc'/' Cell.txt;
mv Cell.txt Cell.cpp;
done
mv Cell.cpp Cell.txt;
sed -i 's/'shiftconductancelevel=64'/'shiftconductancelevel=8'/' Cell.txt;
mv Cell.txt Cell.cpp;
mv Param.cpp Param.txt;
let ia=$i+1;
let ib=$i\*$i;
let ic=$ia\*$ia;
sed -i 's/'NumcellPerSynapse=$ib'/'NumcellPerSynapse=$ic'/' Param.txt;
mv Param.txt Param.cpp;
mv Cell.h Cellh.txt;
sed -i 's/'$ib'/'$ic'/g' Cellh.txt;
mv Cellh.txt Cell.h;
done
