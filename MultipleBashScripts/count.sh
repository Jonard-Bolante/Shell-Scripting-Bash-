#!/bin/bash

#YOU CAN DO THIS METHOD OR SIMPLY USE A 2-DIMENSIONAL ARRAY TO HOLD COUNTERS
myArray=()
numberArray=()
zero=0      one=0
two=0       three=0
four=0      five=0
six=0       seven=0
eight=0     nine=0

# ADDING ALL FILES INTO MY ARRAY
i=0
for fileName in *
do
  myArray[i]=$(echo $fileName | cut -f 1 -d '.')
  (( ++i ))
done
ls

# IF NAME OF FILE BEGINS WITH ANY NUMBER 0-9, THEN COUNT+
for fileName in ${myArray[@]}
do
  case ${fileName:0:1} in
      0)  (( ++zero ));;
      1)  (( ++one ));;
      2)  (( ++two ));;
      3)  (( ++three ));;
      4)  (( ++four ));;
      5)  (( ++five ));;
      6)  (( ++six ));;
      7)  (( ++seven ));;
      8)  (( ++eight ));;
      9)  (( ++nine ));;
  esac
  numberArray
done


numberArray[0]=$zero  numberArray[1]=$one
numberArray[2]=$two   numberArray[3]=$three
numberArray[4]=$four  numberArray[5]=$five
numberArray[6]=$six   numberArray[7]=$seven
numberArray[8]=$eight numberArray[9]=$nine
j=0
for number in {0..9}
do
  printf "$number, %s\n" ${numberArray[$j]}
  (( ++j ))
done

# LOOP THROUGH ALL FILES IN THE ARRAY AND PRINT JUST TO DISPLAY IT
#for fileName in ${myArray[@]}
#do
#  echo $fileName
#done




# The array will look like this:
#    myArray[0]="apples"
#    myArray[1]="bananas"
#     myArray[2]="oranges"
# and you print the info with
#echo "My first index is: ${myArray[0]}"
# to access all elements in array, use:
#echo ${myArray[@]}
#echo ${myArray[0]:0:1}  # this prints first character of first element in index 1 of array of strings
