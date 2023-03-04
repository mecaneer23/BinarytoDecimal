# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (52)

| Language                     |                                        |                                        |                                    |                                  |                                   |                                 |                                  |                                    |
| ---------------------------- | -------------------------------------- | -------------------------------------- | ---------------------------------- | -------------------------------- | --------------------------------- | ------------------------------- | -------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)   | [Clojure](BinarytoDecimal.clj)         | [DogeScript](BinarytoDecimal.djs)      | [Go](BinarytoDecimal.go)           | [Julia](BinarytoDecimal.jl)      | [PHP](BinarytoDecimal.php)        | [Racket](BinarytoDecimal.rkt)   | [Scheme](BinarytoDecimal.scm)    | [Vala](BinarytoDecimal.vala)       |
| [Bash](BinarytoDecimal.sh)   | [CoffeeScript](BinarytoDecimal.coffee) | [Elixir](BinarytoDecimal.exs)          | [Groovy](BinarytoDecimal.gvy)      | [Kotlin](BinarytoDecimal.kt)     | [Pascal](BinarytoDecimal.pas)     | [Reason](BinarytoDecimal.re)    | [Scratch](BinarytoDecimal.sb3)   | [Vimscript](BinarytoDecimal.vim)   |
| [Batch](BinarytoDecimal.bat) | [Common Lisp](BinarytoDecimal.lsp)     | [F#](BinarytoDecimal.fsx)              | [Haskell](BinarytoDecimal.hs)      | [Lua](BinarytoDecimal.lua)       | [Perl](BinarytoDecimal.pl)        | [Rescript](BinarytoDecimal.res) | [Swift](BinarytoDecimal.swift)   | [Visual Basic](BinarytoDecimal.vb) |
| [C](BinarytoDecimal.c)       | [Crystal](BinarytoDecimal.cr)          | [Forth](BinarytoDecimal.fth)           | [Java](BinarytoDecimal.java)       | [Nim](BinarytoDecimal.nim)       | [Powershell](BinarytoDecimal.ps1) | [Ruby](BinarytoDecimal.rb)      | [Tcl](BinarytoDecimal.tcl)       | [Zig](BinarytoDecimal.zig)         |
| [C#](BinarytoDecimal.cs)     | [D](BinarytoDecimal.d)                 | [Fortran](BinarytoDecimal.f90)         | [Java Blocks](BinarytoDecimal.blk) | [OCaml](BinarytoDecimal.ml)      | [Python](BinarytoDecimal.py)      | [Rust](BinarytoDecimal.rs)      | [TypeScript](BinarytoDecimal.ts) |
| [C++](BinarytoDecimal.cpp)   | [Dart](BinarytoDecimal.dart)           | [Gadot (GDScript)](BinarytoDecimal.gd) | [JavaScript](BinarytoDecimal.js)   | [Objective-C](BinarytoDecimal.m) | [R](BinarytoDecimal.r)            | [Scala](BinarytoDecimal.scala)  | [V](BinarytoDecimal.v)           |

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
