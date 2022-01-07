// dotnet fsi BinarytoDecimal.fsx
module BinarytoDecimal =

    let binaryToDecimal binaryNumber =
      let rec recurse (left: list<char>) accumulator =
        match left with
        | [] -> accumulator
        | '1'::xs -> recurse xs (accumulator + (int (2. ** (float (left.Length - 1)))))
        | '0'::xs -> recurse xs accumulator
        | _ -> failwith "Make sure you only give '1' or '0' values"
      recurse (Seq.toList binaryNumber) 0

    printf "Binary Number: "
    let input = System.Console.ReadLine()
    let output = BinaryDecimal(input)
    printfn "%d" output
