#!/bin/bash -x
smallThreedigitNum=100
largestThreedigitNum=999
div=$(($largestThreedigitNum-$smallThreedigitNum+1))
for((i=0;i<5;i++))
do
	arr[$i]=$(($((RANDOM%$div))+$smallThreedigitNum))
done
for((i=0;i<5;i++))
do
	for((j=$i+1;j<5;j++))
	do
		if((${arr[$i]} > ${arr[$j]}))
		then
			a=${arr[$i]}
			arr[$i]=${arr[$j]}
			arr[$j]=$a
		fi
	done
done
echo ${arr[@]}

echo "second largest element in array=" ${arr[3]}
echo "second smallest number  in array=" ${arr[1]}


