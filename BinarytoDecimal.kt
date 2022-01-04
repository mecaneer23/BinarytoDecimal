package BinaryDecimal

import kotlin.math.pow

fun binaryDecimal(binary_number: Long): Int {
	val value: String = binary_number.toString()
	val len: Int = value.length
	var output: Int = 0
	var char: Char
	for (position in value.indices) {
		char = value[position]
		if (char == '1') {
			output += 2.0.pow(len - 1.0 - position).toInt()
		} else if (char == '0') {
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