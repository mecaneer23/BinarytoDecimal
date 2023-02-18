# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (50)

| Language                               |                                        |                                  |                                   |                                    |
| -------------------------------------- | -------------------------------------- | -------------------------------- | --------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)             | [D](BinarytoDecimal.d)                 | [Haskell](BinarytoDecimal.hs)    | [Perl](BinarytoDecimal.pl)        | [Scheme](BinarytoDecimal.scm)      |
| [Bash](BinarytoDecimal.sh)             | [Dart](BinarytoDecimal.dart)           | [Java](BinarytoDecimal.java)     | [PHP](BinarytoDecimal.php)        | [Scratch](BinarytoDecimal.sb3)     |
| [Batch](BinarytoDecimal.bat)           | [DogeScript](BinarytoDecimal.djs)      | [JavaScript](BinarytoDecimal.js) | [Powershell](BinarytoDecimal.ps1) | [Swift](BinarytoDecimal.swift)     |
| [C](BinarytoDecimal.c)                 | [Elixir](BinarytoDecimal.exs)          | [Julia](BinarytoDecimal.jl)      | [Python](BinarytoDecimal.py)      | [Tcl](BinarytoDecimal.tcl)         |
| [C#](BinarytoDecimal.cs)               | [F#](BinarytoDecimal.fsx)              | [Kotlin](BinarytoDecimal.kt)     | [R](BinarytoDecimal.r)            | [TypeScript](BinarytoDecimal.ts)   |
| [C++](BinarytoDecimal.cpp)             | [Forth](BinarytoDecimal.fth)           | [Lua](BinarytoDecimal.lua)       | [Reason](BinarytoDecimal.re)      | [V](BinarytoDecimal.v)             |
| [Clojure](BinarytoDecimal.clj)         | [Fortran](BinarytoDecimal.f90)         | [Nim](BinarytoDecimal.nim)       | [Rescript](BinarytoDecimal.res)   | [Vala](BinarytoDecimal.vala)       |
| [CoffeeScript](BinarytoDecimal.coffee) | [Gadot (GDScript)](BinarytoDecimal.gd) | [Objective-C](BinarytoDecimal.m) | [Ruby](BinarytoDecimal.rb)        | [Visual Basic](BinarytoDecimal.vb) |
| [Common Lisp](BinarytoDecimal.lsp)     | [Go](BinarytoDecimal.go)               | [OCaml](BinarytoDecimal.ml)      | [Rust](BinarytoDecimal.rs)        | [Vimscript](BinarytoDecimal.vim)   |
| [Crystal](BinarytoDecimal.cr)          | [Groovy](BinarytoDecimal.gvy)          | [Pascal](BinarytoDecimal.pas)    | [Scala](BinarytoDecimal.scala)    | [Zig](BinarytoDecimal.zig)         |

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
