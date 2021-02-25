#!/bin/bash -x
smallThreedigitNum=100
largestThreedigitNum=999
div=$(($largestThreedigitNum-$smallThreedigitNum+1))
for((i=0;i<5;i++))
do
	arr[$i]=$(($((RANDOM%$div))+$smallThreedigitNum))
done
count=0
firstlargestnum=${arr[0]}
secondlargestnum=${arr[0]}
for((i=0;i<5;i++))
do
	if(($firstlargestnum < ${arr[$i]}))
	then
		secondlargestnum=$firstlargestnum
		firstlargestnum=${arr[$i]}
	elif(( ((${arr[$i]}>$secondlargestnum)) && ((${arr[$i]}!=$firstlargestnum)) ))
	then
		secondlargestnum=${arr[i]}
	fi

done

echo ${arr[@]}
echo "second largest element in array=" $secondlargestnum
#echo "second smallest number  in array=" ${arr[1]}


