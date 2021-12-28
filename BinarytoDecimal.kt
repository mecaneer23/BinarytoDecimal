package BinaryDecimal

import kotlin.math.pow

fun binaryDecimal(binary_number: Long): Int {
	val value: String = binary_number.toString()
	var output = 0
	for (position in value.indices) {
		if (value[position] == '1') {
			output += 2.0.pow(value.length - 1.0 - position).toInt()
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
	val result = binaryDecimal(num)
	if (result == -1) {
		System.err.println("Make sure you only input binary values")
	} else {
		println(result)
	}
}