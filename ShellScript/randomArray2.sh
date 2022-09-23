#!/bin/bash

myArray=()
i=0

while [ $i -le 10 ]
do
        myArray[$i]=$((RANDOM%3))
	let "i +=1"
done

echo ${myArray[@]}
echo ${myArray[2]}
	
