--[[
cd C:\Users\user\Google Drive\Code\LanguageTranslators\BinaryDecimal\DONE && "F:\Program Files\Binaries-LuaDist-batteries-0.9.8-Windows-x86\bin\lua.exe" BinarytoDecimal.lua
-- ]]
function BinarytoDecimal(binaryNumber)
	value = tostring(binaryNumber)
	output = 0
	for position = 0, string.len(value) do
		if string.sub(value, position, position) == "1" then
			output = output + 2^(string.len(value) - 1 - position)
		elseif string.sub(value, position, position) == "0" then

		end
	end
	return output*2
end

io.write("Binary Number: ")
num = io.read()
print(BinarytoDecimal(num))
