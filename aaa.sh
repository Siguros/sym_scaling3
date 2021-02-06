#!/bin/bash

for i in 3 4 5
do
make
make run
make clean

mv Cell.cpp Cell.txt;
let ia=$i+1
let ib=2**$i
let iv=2**$ia

sed -i 's/'shiftconductancelevel=$ib'/'shiftconductancelevel=$iv'/' Cell.txt;

mv Cell.txt Cell.cpp;
done
