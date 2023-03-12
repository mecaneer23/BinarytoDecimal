# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (53)

| Language                       |                                        |                                        |                                    |                                   |                                 |                                  |                                    |
| ------------------------------ | -------------------------------------- | -------------------------------------- | ---------------------------------- | --------------------------------- | ------------------------------- | -------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)     | [CoffeeScript](BinarytoDecimal.coffee) | [F#](BinarytoDecimal.fsx)              | [Haskell](BinarytoDecimal.hs)      | [Nim](BinarytoDecimal.nim)        | [Python](BinarytoDecimal.py)    | [Scala](BinarytoDecimal.scala)   | [Vala](BinarytoDecimal.vala)       |
| [Bash](BinarytoDecimal.sh)     | [Common Lisp](BinarytoDecimal.lsp)     | [Fantom](BinarytoDecimal.fan)          | [Java](BinarytoDecimal.java)       | [Objective-C](BinarytoDecimal.m)  | [R](BinarytoDecimal.r)          | [Scheme](BinarytoDecimal.scm)    | [Vimscript](BinarytoDecimal.vim)   |
| [Batch](BinarytoDecimal.bat)   | [Crystal](BinarytoDecimal.cr)          | [Forth](BinarytoDecimal.fth)           | [Java Blocks](BinarytoDecimal.blk) | [OCaml](BinarytoDecimal.ml)       | [Racket](BinarytoDecimal.rkt)   | [Scratch](BinarytoDecimal.sb3)   | [Visual Basic](BinarytoDecimal.vb) |
| [C](BinarytoDecimal.c)         | [D](BinarytoDecimal.d)                 | [Fortran](BinarytoDecimal.f90)         | [JavaScript](BinarytoDecimal.js)   | [Pascal](BinarytoDecimal.pas)     | [Reason](BinarytoDecimal.re)    | [Swift](BinarytoDecimal.swift)   | [Zig](BinarytoDecimal.zig)         |
| [C#](BinarytoDecimal.cs)       | [Dart](BinarytoDecimal.dart)           | [Gadot (GDScript)](BinarytoDecimal.gd) | [Julia](BinarytoDecimal.jl)        | [Perl](BinarytoDecimal.pl)        | [Rescript](BinarytoDecimal.res) | [Tcl](BinarytoDecimal.tcl)       |
| [C++](BinarytoDecimal.cpp)     | [DogeScript](BinarytoDecimal.djs)      | [Go](BinarytoDecimal.go)               | [Kotlin](BinarytoDecimal.kt)       | [PHP](BinarytoDecimal.php)        | [Ruby](BinarytoDecimal.rb)      | [TypeScript](BinarytoDecimal.ts) |
| [Clojure](BinarytoDecimal.clj) | [Elixir](BinarytoDecimal.exs)          | [Groovy](BinarytoDecimal.gvy)          | [Lua](BinarytoDecimal.lua)         | [Powershell](BinarytoDecimal.ps1) | [Rust](BinarytoDecimal.rs)      | [V](BinarytoDecimal.v)           |

## Libraries and tools using BinarytoDecimal in existing languages

| Library or tool                                   | Parent language                  |
| ------------------------------------------------- | -------------------------------- |
| [Bitsbox](BinarytoDecimal.bitsbox.js)             | [JavaScript](BinarytoDecimal.js) |
| [CSS](BinarytoDecimal.css)                        | [HTML](BinarytoDecimal.html)     |
| [HTML](BinarytoDecimal.html)                      | [JavaScript](BinarytoDecimal.js) |
| [Haskell Style](BinarytoDecimal.haskell_style.py) | [Python](BinarytoDecimal.py)     |
| [Tkinter](BinarytoDecimal.tkinter.py)             | [Python](BinarytoDecimal.py)     |
| [Jupyter Notebook](BinarytoDecimal.ipynb)         | [Python](BinarytoDecimal.py)     |

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
