# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (47)

| Language                     |                                        |                                   |                                        |                                    |                                  |                                   |                                 |                                  |                                    |
| ---------------------------- | -------------------------------------- | --------------------------------- | -------------------------------------- | ---------------------------------- | -------------------------------- | --------------------------------- | ------------------------------- | -------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)   | [C++](BinarytoDecimal.cpp)             | [Dart](BinarytoDecimal.dart)      | [Gadot (GDScript)](BinarytoDecimal.gd) | [JavaScript](BinarytoDecimal.js)   | [Nim](BinarytoDecimal.nim)       | [PHP](BinarytoDecimal.php)        | [Rescript](BinarytoDecimal.res) | [Scheme](BinarytoDecimal.scm)    | [Visual Basic](BinarytoDecimal.vb) |
| [Bash](BinarytoDecimal.sh)   | [Clojure](BinarytoDecimal.clj)         | [DogeScript](BinarytoDecimal.djs) | [Go](BinarytoDecimal.go)               | [Julia](BinarytoDecimal.jl)        | [Objective-C](BinarytoDecimal.m) | [Powershell](BinarytoDecimal.ps1) | [Ruby](BinarytoDecimal.rb)      | [Swift](BinarytoDecimal.swift)   | [Zig](BinarytoDecimal.zig)         |
| [Batch](BinarytoDecimal.bat) | [CoffeeScript](BinarytoDecimal.coffee) | [Elixir](BinarytoDecimal.exs)     | [Groovy](BinarytoDecimal.gvy)          | [Kotlin](BinarytoDecimal.kt)       | [OCaml](BinarytoDecimal.ml)      | [Python](BinarytoDecimal.py)      | [Rust](BinarytoDecimal.rs)      | [Tcl](BinarytoDecimal.tcl)       |
| [C](BinarytoDecimal.c)       | [Crystal](BinarytoDecimal.cr)          | [F#](BinarytoDecimal.fsx)         | [Haskell](BinarytoDecimal.hs)          | [Common Lisp](BinarytoDecimal.lsp) | [Pascal](BinarytoDecimal.pas)    | [R](BinarytoDecimal.r)            | [Scala](BinarytoDecimal.scala)  | [TypeScript](BinarytoDecimal.ts) |
| [C#](BinarytoDecimal.cs)     | [D](BinarytoDecimal.d)                 | [Forth](BinarytoDecimal.fth)      | [Java](BinarytoDecimal.java)           | [Lua](BinarytoDecimal.lua)         | [Perl](BinarytoDecimal.pl)       | [Reason](BinarytoDecimal.re)      | [Scratch](BinarytoDecimal.sb3)  | [V](BinarytoDecimal.v)           |

## Libraries and tools using BinarytoDecimal in existing languages

| Library or tool                                   | Parent language |
| ------------------------------------------------- | --------------- |
| [Bitsbox](BinarytoDecimal.bitsbox.js)             | JavaScript      |
| [CSS](BinarytoDecimal.css)                        | HTML            |
| [HTML](BinarytoDecimal.html)                      | JavaScript      |
| [Haskell Style](BinarytoDecimal.haskell_style.py) | Python          |
| [Tkinter](BinarytoDecimal.tkinter.py)             | Python          |

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
