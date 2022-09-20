# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (49)

| Language                       |                                        |                                        |                                  |                                   |                                 |                                    |
| ------------------------------ | -------------------------------------- | -------------------------------------- | -------------------------------- | --------------------------------- | ------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)     | [CoffeeScript](BinarytoDecimal.coffee) | [F#](BinarytoDecimal.fsx)              | [Java](BinarytoDecimal.java)     | [OCaml](BinarytoDecimal.ml)       | [Reason](BinarytoDecimal.re)    | [Swift](BinarytoDecimal.swift)     |
| [Bash](BinarytoDecimal.sh)     | [Common Lisp](BinarytoDecimal.lsp)     | [Forth](BinarytoDecimal.fth)           | [JavaScript](BinarytoDecimal.js) | [Pascal](BinarytoDecimal.pas)     | [Rescript](BinarytoDecimal.res) | [Tcl](BinarytoDecimal.tcl)         |
| [Batch](BinarytoDecimal.bat)   | [Crystal](BinarytoDecimal.cr)          | [Fortran](BinarytoDecimal.f90)         | [Julia](BinarytoDecimal.jl)      | [Perl](BinarytoDecimal.pl)        | [Ruby](BinarytoDecimal.rb)      | [TypeScript](BinarytoDecimal.ts)   |
| [C](BinarytoDecimal.c)         | [D](BinarytoDecimal.d)                 | [Gadot (GDScript)](BinarytoDecimal.gd) | [Kotlin](BinarytoDecimal.kt)     | [PHP](BinarytoDecimal.php)        | [Rust](BinarytoDecimal.rs)      | [V](BinarytoDecimal.v)             |
| [C#](BinarytoDecimal.cs)       | [Dart](BinarytoDecimal.dart)           | [Go](BinarytoDecimal.go)               | [Lua](BinarytoDecimal.lua)       | [Powershell](BinarytoDecimal.ps1) | [Scala](BinarytoDecimal.scala)  | [Vala](BinarytoDecimal.vala)       |
| [C++](BinarytoDecimal.cpp)     | [DogeScript](BinarytoDecimal.djs)      | [Groovy](BinarytoDecimal.gvy)          | [Nim](BinarytoDecimal.nim)       | [Python](BinarytoDecimal.py)      | [Scheme](BinarytoDecimal.scm    | [Visual Basic](BinarytoDecimal.vb) |
| [Clojure](BinarytoDecimal.clj) | [Elixir](BinarytoDecimal.exs)          | [Haskell](BinarytoDecimal.hs)          | [Objective-C](BinarytoDecimal.m  | [R](BinarytoDecimal.r)            | [Scratch](BinarytoDecimal.sb3   | [Zig](BinarytoDecimal.zig)         |

## Libraries and tools using BinarytoDecimal in existing languages

| Library or tool                                   | Parent language                  |
| ------------------------------------------------- | -------------------------------- |
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
