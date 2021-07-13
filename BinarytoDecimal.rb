def BinarytoDecimal(binaryNumber)
	value = binaryNumber.to_s
	output = 0
	for position in 0..value.length
		if value[position] == "1"
			if position == value.length - 1
				output += 1
			else
				output += 2**(value.length - 1 - position)
			end
		elsif value[position] == "0"
			nil
		end
	end
	return output
end

print "Binary Number: "
num = gets.to_i
puts BinarytoDecimal(num)