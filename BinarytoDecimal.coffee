# coffee -c --no-header -o btd-coffee.js BinarytoDecimal.coffee; node btd-coffee.js; rm btd-coffee.js
BinaryToDecimal = (binaryNumber) ->
    value = binaryNumber.toString(10)
    length = value.length
    output = 0
    for position in [0..length-1]
        char = value[position]
        if `char == '1'`
            output += Math.pow 2, length - 1 - position 
        else if `char == '0'`
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