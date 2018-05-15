#!/bin/bash
#_____________________________________________________
#_____________________________________________________
#_____________________________________________________

#Notes just on how to print number of files in home directory
increment_file=1
count=$( ls ~ | wc -l )
echo "Number of entries: $count in HOME directory"

#for every file in my current directory, do this
for fileName in *
do
	#numberFile is the 3 digits such as 001, 002, 003, etc. that will increment by itself
	numberFile=$( printf "%03d" $increment_file )
	#mv to rename files. $1 is the basename, $numberFile is the incrementing numbers, and $2 is the file extension
	mv $fileName $1$numberFile.$2
	(( ++increment_file ))
done
