# nim compile --run BinarytoDecimal.nim
import strutils
import math

proc BinarytoDecimal(binaryNumber: int): int =
    var value: cString = intToStr(binaryNumber)
    var length: int = len(value)
    var output: int = 0
    var two: int = 2
    for position in 0..length-1:
        var chr = value[position]
        if chr == '1':
            output += two ^ (length - 1 - position).int
        else:
            if chr == '0':
                continue
            else:
                echo "Make sure you only input binary values"
                quit(0)
    return output

write(stdout, "Binary Number: ")
echo BinarytoDecimal(parseInt(readLine(stdin)))
