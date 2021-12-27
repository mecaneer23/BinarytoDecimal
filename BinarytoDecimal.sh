#!/bin/bash

BinarytoDecimal() {
	value=$1;
	length=${#value};
	output=0;
	for ((position=0; position < $length; position++));
	do
		if [[ ${value:position:1} == 1 ]];
		then
			output=$((output+(2**(length-1-position))));
		elif [[ ${value:position:1} == 0 ]];
		then
			:
		else
			echo "Make sure you only input binary values";
			exit;
		fi;
	done;
        echo $output;
}

read -p "Binary Number: " input;
echo $(BinarytoDecimal $input);

# read -p "Press enter to quit..."
