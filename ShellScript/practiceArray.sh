#/bin/bash

myArray=('Debian Linux' 'Redhat Linux' 'Ubuntu Linux')

length=${#myArray[@]}

for (( i=0; i<$length; i++ )); do
   echo ${myArray[${i}]}
done
