#!/usr/bin/env fan
class BinarytoDecimal {
    static Int BinaryToDecimal(Int binaryNumber) {
        Str value := binaryNumber.toStr()
        Int length := value.size()
        Int output := 0
        for (Int position := 0; position < length; position++) {
            Str chr := value.getRange(position..position)
            if (chr == "1") {
                output += 2.pow (length-1-position)
            } else if (chr == "0") {
                continue
            } else {
                echo("Make sure you only input binary values")
                break
            }
        }
        return output
    }

    static Void main() {
        Env.cur.out.print("Binary Number: ").flush
        echo(BinaryToDecimal(Env.cur.in.readLine.toInt))
    }
}