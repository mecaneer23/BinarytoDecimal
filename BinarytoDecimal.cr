# crystal run BinarytoDecimal.cr
def binary_to_decimal(binaryNumber)
    value = binaryNumber.to_s
    length = value.size
    output = 0
    position = 0
    while position < length
        char = value[position]
        if char == '1'
            output += 2**(length - 1 - position)
        elsif char == '0'
            nil
        else
            return "Make sure you only input binary values"
        end
        position += 1
    end
    return output
end

print "Binary Number: "
num = gets
puts binary_to_decimal(num)
