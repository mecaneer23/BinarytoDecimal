#!/usr/bin/env lua
function BinarytoDecimal(binaryNumber)
	value = tostring(binaryNumber)
	length = string.len(value)
	output = 0
	for position = 0, length do
		char = string.sub(value, position, position)
		if char == "1" then
			output = output + 2^(length - position)
		elseif char == "0" then
			
		end
	end
	return math.floor(output)
end

io.write("Binary Number: ")
print(BinarytoDecimal(io.read()))
