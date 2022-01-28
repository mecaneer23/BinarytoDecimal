#!/usr/bin/env groovy

int BinarytoDecimal(binaryNumber) {
    def value = binaryNumber.toString()
    def length = value.length()
    def output = 0
    for (position in 0..length-1) {
        char chr = value[position]
        if (chr == '1') {
            output += Math.pow(2, length - 1 - position)
        } else if (chr == '0') {
            continue
        } else {
            println("Make sure you only input binary values")
            System.exit(1)
        }
    }
    return output
}

println(BinarytoDecimal(System.console().readLine("Binary Number: ")))
