#!/bin/bash

function BinarytoDecimal() {
	length=${#1};
	output=0;
	for ((position=0; position < $length; position++));
	do
		if [ ${1:position:1} -eq 1 ];
		then
			output=$((output+$((2**$(($length-1-$position))))));
		elif [ ${1:position:1} -eq 0 ];
		then
			:
		else
			echo "Make sure you only input binary values";
			exit;
		fi;
	done;
}

read -p "Binary Number: " input;
BinarytoDecimal $input;
echo $output;

# uncomment this line if running in windows
# read -p "Press enter to quit..."