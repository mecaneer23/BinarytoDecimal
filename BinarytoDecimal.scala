// scalac BinarytoDecimal.scala; scala BinaryToDecimal

object BinaryToDecimal {
    def BinarytoDecimal(binaryNumber: Int): Int = {
        var value = binaryNumber.toString
        var len = value.length
        var output = 0
        for (position <- 0 to len - 1) {
            var char = value(position)
            if (char == '1') {
                output += math.pow(2, len - position - 1).toInt
            } else if (char == '0') {
                output += 0
            } else {
                println("Make sure you only input binary values")
                System.exit(-1)
            }
        }
        return output
    }

    def main(args: Array[String]) = {
        print("Binary Number: ")
        val binaryNumber = scala.io.StdIn.readInt()
        println(BinarytoDecimal(binaryNumber))
    }
}