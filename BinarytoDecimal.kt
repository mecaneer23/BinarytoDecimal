package BinaryDecimal

import kotlin.math.pow

fun binaryDecimal(binary_number: Long): Int {
	val value: String = binary_number.toString()
	val len: Int = value.length
	var output = 0
	for (position in value.indices) {
		if (value[position] == '1') {
			output += 2.0.pow(len - 1.0 - position).toInt()
		} else if (value[position] == '0') {
			continue
		} else {
			System.err.println("Make sure you only input binary values")
			return -1
		}
	}
	return output
}

fun main() {
	print("Binary Number: ")
	println(binaryDecimal(Integer.valueOf(readLine()).toLong()))
}