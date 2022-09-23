#!/bin/bash 

index_array=(1 2 4 something is written here 45.2636)

echo ${index_array[@]}

echo ${index_array[3]}

echo ${index_array[2]} + ${index_array[0]}
