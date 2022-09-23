#!/bin/bash

myArray=()

highest=0
secondHighest='unset'
lowest=0
secondLowest='unset'

for ((i=0;i<10;i++))
do
	myArray[$i]=$((RANDOM%5))
	echo ${myArray[${i}]}
done

for ((j=0;j<10;j++))
do
	if [[ ${myArray[$j]} -gt $highest ]]
        then
		secondHighest=$highest
	        highest=${myArray[$j]}
        
	elif (( ${myArray[j]} != $highest )) && { [[ "$secondHighest" = "unset" ]] || [[ ${myArray[j]} > $secondHighest ]]; }
  	then
    		secondHighest=${myArray[j]}
  	fi

	
	if [[ ${myArray[$j]} -lt $lowest ]]
        then
                secondLowest=$lowest 
                lowest=${myArray[$j]}

        elif (( ${myArray[j]} != $lowest )) && { [[ "$secondLowest" = "unset" ]] || [[ ${myArray[j]} < $secondLowest ]]; }
        then
                secondLowest=${myArray[j]}
        fi


done

echo Highest $highest
echo "secondHighest = $secondHighest"
echo Lowest $lowest
echo "secondLowst = $secondLowest"
