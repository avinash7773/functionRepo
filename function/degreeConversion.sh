#!/bin/bash -x

echo "Enter 1 for degF"
echo "Enter 2 for degC"
read -p "Enter above selection=" x
read -p "Enter water boiling point temperature=" y
function getdegF(){
	degF=$(( $y*(9/5)+32 ))
	echo $degF
}
function getdegC() {
	degC=$(( $y-32*(5/9) ))
	echo $degC

}
case "$x" in
	1) res1=$( getdegF $(($y)) )
	 echo "Temperature in degF=" $res1
	;;
	2) res2=$( getdegC $(($y)) )
	echo "Temperature in degC=" $res2
	;;
	*) echo "Enter number is not allowed"
esac

