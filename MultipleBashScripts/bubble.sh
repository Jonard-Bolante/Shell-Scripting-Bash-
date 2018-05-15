#!/bin/bash
#_____________________________________________________---
#_____________________________________________________---
#_____________________________________________________---

# This creates an array and populates all of the arguments inside it
myArray=()
myArray+=($@)
# I want to print my unsorted array
echo Original arguments. This is unsorted:
printf '%s ' "${myArray[@]}"
printf '\n\n\n'

# Bubble Sort method is n^2 which is exponential Big O. 2 for loops to swap
for (( i=0; i<$#; i++ )) # "$#" is the number of arguements passed into the program
do
	for(( j=$i; j<=$#; j++ ))
	do
		if [[ ${myArray[$i]} -lt ${myArray[$j]} ]];
		then
			temporary_Variable=${myArray[$i]}
			myArray[$i]=${myArray[$j]}
			myArray[$j]=$temporary_Variable
		fi
	done
done

echo This is sorted:
printf '%s ' "${myArray[@]}"
printf "\n\n"
