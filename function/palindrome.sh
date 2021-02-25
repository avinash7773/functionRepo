#!bin/bash -x

read -p "Enter any number=" x
temp=$x
rev=0
function getNumber(){
	while(( $x!=0 ))
	do
		rem=$(( $x%10 ))
		rev=$(( $rem+10*$rev ))
		x=$(($x/10))
	done
	echo $rev
}

rev=$( getNumber $(($x)) )

if(( rev ==temp ))
then
	echo "Number is palindrome"
else
	echo "Number is not palindrome"
fi


