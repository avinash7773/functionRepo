#!/bin/bash -x

count=0
for((i=0;i<=100;i++))
do
	j=$i
	rev=0
	while(($j!=0))
	do
		rem=$(($j%10))
		rev=$(($rev*10+$rem))
		j=$(($j/10))
	done
if((($rev == $i) && ($i>9)))
then
	arr[$count]=$i
	(( count++ ))
fi
done
echo ${arr[@]}
