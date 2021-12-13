# coffee -c --no-header BinarytoDecimal.coffee js BinarytoDecimal.js rm BinarytoDecimal.js 
BinaryToDecimal = (binaryNumber) ->
    value = binaryNumber.toString(10)  
    output = 0
    for position in [0..value.length-1]
        if `value[position] == '1'`
            output += Math.pow 2, value.length - 1 - position 
        else if `value[position] == '0'`
        else
            return "Make sure you only input binary values"
    return output

readline = require('readline');

r1 = readline.createInterface
    input: process.stdin,
    output: process.stdout
r1.question("Binary Number: ", (num) =>
    console.log BinaryToDecimal num 
    r1.close
    process.exit()
)