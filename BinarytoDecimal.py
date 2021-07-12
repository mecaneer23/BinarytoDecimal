def BinarytoDecimal(binaryNumber):
    value = str(binaryNumber)
    output = 0
    for position in range(0, len(value)):
        if value[position] == "1":
            if position == len(value) - 1:
                output = output + 1
            else:    
                output = output + 2**(len(value) - 1 - position)
        elif value[position] == "0":
            pass
        else:
            return "Make sure you only input binary values"
    return output

if __name__ == "__main__":
    num = int(input("Binary Number: "))
    print(BinarytoDecimal(num))