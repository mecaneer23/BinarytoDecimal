#!/usr/bin/env ocaml

let if_check character len position =
    match character with
    | '1' -> truncate (2.0**(float (len - position - 1)))
    | '0' -> 0
    | _ -> failwith "Make sure you only input binary values"

let binary_to_decimal binary_number =
    let value = string_of_int binary_number in
    let len = String.length value in
    let output = ref 0 in
    let character = ref '0' in
    for position = 0 to len-1 do
        character := value.[position];
        output := !output + (if_check !character len position);
    done;
    !output
;;

print_string "Binary Number: ";;
let input = read_line ();;
print_endline (string_of_int (binary_to_decimal (int_of_string input)))
