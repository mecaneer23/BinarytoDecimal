actor BinarytoDecimal
  new create(binaryNumber: U64): U64 =>
    var value = binaryNumber.string()
    var length = value.size()
    var output = 0
    var position = 0
    while(position < length) do
      var chr = value.at(position)
      if(chr == '1') then
        output += Math.pow(2, (length-1-position))
      else if(chr == '0') then
        continue
      else
        Console.print("Make sure you only input binary values")
        Environment.exit(-1)
      end
      position += 1
    end
    return output
  end
end

actor Main
  new create(env: Env) =>
    Console.print("Binary Number: ")
    Console.print(
      BinarytoDecimal(
        Stdlib.parse_u64(
          Console.read_line()
        )
      )
    )
  end
end
