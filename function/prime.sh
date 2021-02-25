#!/bin/bash -x

rev=0
count=0
count1=0
palindromeNumber=0
function getPalindrome(){
	while(( $x!=0 ))
	do
		rem=$(( $x%10 ))
		rev=$(( $rev*10+$rem ))
		x=$(( $x/10 ))
	done
	echo $rev
}
read -p "Enter any number=" x
temp=$x
res1=$( getPalindrome $(($x)) )
if(( $temp==$res1 ))
then
	echo "number is palindrome"
	palindromeNumber=$res1

else
	echo "number is not palindrome"

fi



function getPrime(){
	i=1
	while(( i<=$y ))
	do
		if(( $y%$i==0 ))
		then
			((count++))
		fi
	((i++))
	done
	if(( $count==2 ))
	then
		echo  "Number is prime number"
	else
		echo "Number is not prime number"
	fi

}
read -p "Enter number=" y
res2=$( getPrime $(($y)) )


function getPalindromeIsPrime(){
	i=1
	while(( i<$palindromeNumber ))
	do
		if(( $palindromeNumber%$i==0 ))
		then
			((count1++))
		fi
	((i++))
	done
	if(( $count1==2 ))
	then
		echo "Palindrome number is also Prime"
	else
		echo "Palindrome number is not Prime"
	fi
}

res3=$( getPalindromeIsPrime $(( $palindromeNumber )) )

