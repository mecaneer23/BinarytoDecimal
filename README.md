# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (48)

| Language                     |                                        |                                        |                                    |                                  |                                   |                                |                                    |
| ---------------------------- | -------------------------------------- | -------------------------------------- | ---------------------------------- | -------------------------------- | --------------------------------- | ------------------------------ | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)   | [Clojure](BinarytoDecimal.clj)         | [Elixir](BinarytoDecimal.exs)          | [Haskell](BinarytoDecimal.hs)      | [Lua](BinarytoDecimal.lua)       | [PHP](BinarytoDecimal.php)        | [Ruby](BinarytoDecimal.rb)     | [Tcl](BinarytoDecimal.tcl)         |
| [Bash](BinarytoDecimal.sh)   | [CoffeeScript](BinarytoDecimal.coffee) | [F#](BinarytoDecimal.fsx)              | [Java](BinarytoDecimal.java)       | [Nim](BinarytoDecimal.nim)       | [Powershell](BinarytoDecimal.ps1) | [Rust](BinarytoDecimal.rs)     | [TypeScript](BinarytoDecimal.ts)   |
| [Batch](BinarytoDecimal.bat) | [Crystal](BinarytoDecimal.cr)          | [Forth](BinarytoDecimal.fth)           | [JavaScript](BinarytoDecimal.js)   | [Objective-C](BinarytoDecimal.m) | [Python](BinarytoDecimal.py)      | [Scala](BinarytoDecimal.scala) | [V](BinarytoDecimal.v)             |
| [C](BinarytoDecimal.c)       | [D](BinarytoDecimal.d)                 | [Gadot (GDScript)](BinarytoDecimal.gd) | [Julia](BinarytoDecimal.jl)        | [OCaml](BinarytoDecimal.ml)      | [R](BinarytoDecimal.r)            | [Scratch](BinarytoDecimal.sb3) | [Vala](BinarytoDecimal.vala)       |
| [C#](BinarytoDecimal.cs)     | [Dart](BinarytoDecimal.dart)           | [Go](BinarytoDecimal.go)               | [Kotlin](BinarytoDecimal.kt)       | [Pascal](BinarytoDecimal.pas)    | [Reason](BinarytoDecimal.re)      | [Scheme](BinarytoDecimal.scm)  | [Visual Basic](BinarytoDecimal.vb) |
| [C++](BinarytoDecimal.cpp)   | [DogeScript](BinarytoDecimal.djs)      | [Groovy](BinarytoDecimal.gvy)          | [Common Lisp](BinarytoDecimal.lsp) | [Perl](BinarytoDecimal.pl)       | [Rescript](BinarytoDecimal.res)   | [Swift](BinarytoDecimal.swift) | [Zig](BinarytoDecimal.zig)         |

## Libraries and tools using BinarytoDecimal in existing languages

| Library or tool                                   | Parent language |
| ------------------------------------------------- | --------------- |
| [Bitsbox](BinarytoDecimal.bitsbox.js)             | [JavaScript](BinarytoDecimal.js) |
| [CSS](BinarytoDecimal.css)                        | [HTML](BinarytoDecimal.html)     |
| [HTML](BinarytoDecimal.html)                      | [JavaScript](BinarytoDecimal.js) |
| [Haskell Style](BinarytoDecimal.haskell_style.py) | [Python](BinarytoDecimal.py)     |
| [Tkinter](BinarytoDecimal.tkinter.py)             | [Python](BinarytoDecimal.py)     |

## Algorithm (when applicable)

```pseudocode
function BinarytoDecimal(int binaryNumber) -> int {
    constant string value = integer_to_string(binaryNumber)
    constant int length = length(value)
    variable int output = 0
    variable int position
    for 0 to length using position {
        variable character chr = char_from_string(value, position)
        if chr is '1' {
            output += 2^(length-1-position)
        } else if chr is '0' {
            continue loop
        } else {
            print("Make sure you only input binary values")
            exit(-1)
        }
    }
    return output
}

function starting_point(void) -> void {
    print("Binary Number: ")
    print(
        BinarytoDecimal(
            string_to_integer(
                get_user_input
            )
        )
    )
}
```
