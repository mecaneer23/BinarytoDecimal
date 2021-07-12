#!/bin/bash

function BinarytoDecimal() {
	size=${#1}
	output=0
	position=0
	while [ $position -lt $size ]
	do
		if [ ${1:position:1} -eq 1 ]
		then
			if [ $position -eq $(($size-1)) ] 
			then
				output=$((output+1))
			else
				output=$((output+$((2**$(($size-1-$position))))))
			fi
		elif [ ${1:position:1} -eq 0 ]
		then
			:	
		else
			echo Make sure you only input binary values
			exit
		fi
		position=$(($position+1))
	done
}

read -p "Binary Number: " input
BinarytoDecimal $input
echo $output

# uncomment this line if running in windows
# read -p "Press enter to quit..."