#!/bin/bash

sum=0
for((i=0;i<3;i++))
do
	read arr[$i]
	sum=$(($sum+${arr[$i]}))
done

echo "sum=" $sum
