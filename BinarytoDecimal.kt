package BinaryDecimal

import java.lang.Math.pow

fun BinarytoDecimal(binaryNumber: Long): Int {
	val value = binaryNumber.toString()
	var output = 0
	for (position in 0..value.length - 1) {
		if (value[position] == '1') {
			if (position == value.length - 1) {
				output += 1
			} else {
				output += pow(2.0, value.length - 1.0 - position).toInt()
			}
		} else if (value[position] == '0') {
			null
		} else {
			return -1
		}
	}
	return output
}

fun main() {
	print("Binary Number: ")
	val num = Integer.valueOf(readLine()).toLong()
	val result = BinarytoDecimal(num)
	if (result == -1) {
		System.err.println("Make sure you only input binary values")
	} else {
		println(result)
	}
}