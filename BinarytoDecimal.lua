#!/usr/bin/env lua
function BinarytoDecimal(binaryNumber)
	value = tostring(binaryNumber)
	length = string.len(value)
	output = 0
	for position = 0, length do
		if string.sub(value, position, position) == "1" then
			output = output + 2^(length - position)
		elseif string.sub(value, position, position) == "0" then

		end
	end
	return math.floor(output)
end

io.write("Binary Number: ")
num = io.read()
print(BinarytoDecimal(num))
