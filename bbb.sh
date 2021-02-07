#!/bin/bash
for i in 1 2 3 4
do
make
make run
make clean
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
