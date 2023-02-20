#!/usr/bin/env julia
function BinarytoDecimal(binaryNumber)
    value = string(binaryNumber)
    len = length(value)
    output = 0
    for position = 1:len
        char = value[position]
        if char == '1'
            output += 2^(len - position)
        elseif char == '0'
        continue
        else
            return "Make sure you only input binary values"
        end
    end
    return output
end

print("Binary Number: ")
println(BinarytoDecimal(parse(Int64, readline())))
