// dotnet fsi BinarytoDecimal.fsx
module BinarytoDecimal =

    let BinaryDecimal(binaryNumber) =
        let value = binaryNumber.ToString()
        let length = value.Length
        let mutable output = 0
        let mutable char = '0'
        for position in 0..length-1 do
            char <- value.Chars(position)
            match char with
            | '1' -> output <- output + (int (2.0**(float (length - position - 1))))
            | '0' -> output <- output
            | _ -> failwith "Make sure you only input binary values"
        output

    printf "Binary Number: "
    let input = System.Console.ReadLine()
    let output = BinaryDecimal(input)
    printfn "%d" output