// v run BinarytoDecimal.v

import os
import math

fn binary_to_decimal(binary_number int) int {
	value := binary_number.str()
	length := value.len
	mut output := 0
	for position in 0 .. length {
		mut chr := value[position]
		if chr == u8(49) {
			output += int(math.pow(2, length - 1 - position))
		} else if chr == u8(48) {
			continue
		} else {
			println("Make sure you only input binary values")
			exit(-1)
		}
	}
	return output
}

fn main() {
	println(binary_to_decimal(os.input("Binary Number: ").int()))
}