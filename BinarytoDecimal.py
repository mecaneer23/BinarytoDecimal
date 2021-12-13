def BinarytoDecimal(binaryNumber):
	value = str(binaryNumber)
	length = len(value)
	output = 0
	for position in range(0, length):
		char = value[position]
		if char == '1':
			output += 2**(length - 1 - position)
		elif char == '0':
			pass
		else:
			return "Make sure you only input binary values"
	return output

if __name__ == "__main__":
	print(BinarytoDecimal(int(input("Binary Number: "))))