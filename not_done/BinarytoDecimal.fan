class BinarytoDecimal {
    Int BinaryToDecimal(Int binaryNumber) {
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

    Void main() {
        // the BinarytoDecimal function works
        // although the cli input doesn't work right now...
        echo("Binary Number: ")
        input := Process()
        echo(BinaryToDecimal((input.in.readLine()).toInt()))
    }
}