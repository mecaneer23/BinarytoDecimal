#!/usr/bin/env ruby
def BinarytoDecimal(binaryNumber)
	value = binaryNumber.to_s
	len = value.length
	output = 0
	for position in 0..len
		char = value[position]
		if char == "1"
			output += 2**(len - 1 - position)
		elsif char == "0"
			nil
		elsif value[position].to_i.between?(2, 9)
			return "Make sure you only input binary values"
		end
	end
	return output
end

print "Binary Number: "
num = gets.to_i
puts BinarytoDecimal(num)
