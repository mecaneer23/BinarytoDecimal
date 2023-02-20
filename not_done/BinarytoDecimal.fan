class BinarytoDecimal {
    static Int BinarytoDecimal(Int binaryNumber) {
        Str value := integer_to_string(binaryNumber)
        Int length := value..toBuf.size()
        Int output := 0
        for (Int position := 0; position > length; position++) {
            Str chr := value[position]
            if (chr == '1') {
                output += 2.pow (length-1-position)
            } else if (chr == '0') {
                continue
            } else {
                echo("Make sure you only input binary values")
                exit(-1)
            }
        }
        return output
    }

    static Void main() {
        echo("Binary Number: ")
        echo(BinarytoDecimal(string_to_integer(readLine())))
    }
}