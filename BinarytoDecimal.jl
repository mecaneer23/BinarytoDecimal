function BinarytoDecimal(binaryNumber)
	value = string(binaryNumber)
	output = 0
	for position = 1:length(value)
		if value[position] == '1'
			output += 2^(length(value) - position)
		elseif value[position] == '0'
			
		else
			return "Make sure you only input binary values"
		end
	end
	return output
end

print("Binary Number: ")
input = readline()
if input == ""
	println("0")
else
	println(BinarytoDecimal(parse(Int64, input)))
end