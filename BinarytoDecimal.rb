#!/usr/bin/env ruby
def BinarytoDecimal(binaryNumber)
	value = binaryNumber.to_s
	output = 0
	for position in 0..value.length
		if value[position] == "1"
			output += 2**(value.length - 1 - position)
		elsif value[position] == "0"
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
