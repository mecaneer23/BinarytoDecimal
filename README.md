# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (51)

| Language                               |                                    |                                        |                                  |                                   |                                  |                                    |
| -------------------------------------- | ---------------------------------- | -------------------------------------- | -------------------------------- | --------------------------------- | -------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)             | [Common Lisp](BinarytoDecimal.lsp) | [Fortran](BinarytoDecimal.f90)         | [Kotlin](BinarytoDecimal.kt)     | [Powershell](BinarytoDecimal.ps1) | [Scala](BinarytoDecimal.scala)   | [Visual Basic](BinarytoDecimal.vb) |
| [Bash](BinarytoDecimal.sh)             | [Crystal](BinarytoDecimal.cr)      | [Gadot (GDScript)](BinarytoDecimal.gd) | [Lua](BinarytoDecimal.lua)       | [Python](BinarytoDecimal.py)      | [Scheme](BinarytoDecimal.scm)    | [Vimscript](BinarytoDecimal.vim)   |
| [Batch](BinarytoDecimal.bat)           | [D](BinarytoDecimal.d)             | [Go](BinarytoDecimal.go)               | [Nim](BinarytoDecimal.nim)       | [R](BinarytoDecimal.r)            | [Scratch](BinarytoDecimal.sb3)   | [Zig](BinarytoDecimal.zig)         |
| [C](BinarytoDecimal.c)                 | [Dart](BinarytoDecimal.dart)       | [Groovy](BinarytoDecimal.gvy)          | [Objective-C](BinarytoDecimal.m) | [Racket](BinarytoDecimal.rkt)     | [Swift](BinarytoDecimal.swift)   |
| [C#](BinarytoDecimal.cs)               | [DogeScript](BinarytoDecimal.djs)  | [Haskell](BinarytoDecimal.hs)          | [OCaml](BinarytoDecimal.ml)      | [Reason](BinarytoDecimal.re)      | [Tcl](BinarytoDecimal.tcl)       |
| [C++](BinarytoDecimal.cpp)             | [Elixir](BinarytoDecimal.exs)      | [Java](BinarytoDecimal.java)           | [Pascal](BinarytoDecimal.pas)    | [Rescript](BinarytoDecimal.res)   | [TypeScript](BinarytoDecimal.ts) |
| [Clojure](BinarytoDecimal.clj)         | [F#](BinarytoDecimal.fsx)          | [JavaScript](BinarytoDecimal.js)       | [Perl](BinarytoDecimal.pl)       | [Ruby](BinarytoDecimal.rb)        | [V](BinarytoDecimal.v)           |
| [CoffeeScript](BinarytoDecimal.coffee) | [Forth](BinarytoDecimal.fth)       | [Julia](BinarytoDecimal.jl)            | [PHP](BinarytoDecimal.php)       | [Rust](BinarytoDecimal.rs)        | [Vala](BinarytoDecimal.vala)     |

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
