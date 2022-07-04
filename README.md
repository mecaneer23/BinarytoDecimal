# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (47)

| Language                       |                                        |                                        |                                    |                                   |                                 |                                    |
| ------------------------------ | -------------------------------------- | -------------------------------------- | ---------------------------------- | --------------------------------- | ------------------------------- | ---------------------------------- |
| [Ada](BinarytoDecimal.adb)     | [CoffeeScript](BinarytoDecimal.coffee) | [Forth](BinarytoDecimal.fth)           | [Julia](BinarytoDecimal.jl)        | [Pascal](BinarytoDecimal.pas)     | [Rescript](BinarytoDecimal.res) | [Tcl](BinarytoDecimal.tcl)         |
| [Bash](BinarytoDecimal.sh)     | [Crystal](BinarytoDecimal.cr)          | [Gadot (GDScript)](BinarytoDecimal.gd) | [Kotlin](BinarytoDecimal.kt)       | [Perl](BinarytoDecimal.pl)        | [Ruby](BinarytoDecimal.rb)      | [TypeScript](BinarytoDecimal.ts)   |
| [Batch](BinarytoDecimal.bat)   | [D](BinarytoDecimal.d)                 | [Go](BinarytoDecimal.go)               | [Common Lisp](BinarytoDecimal.lsp) | [PHP](BinarytoDecimal.php)        | [Rust](BinarytoDecimal.rs)      | [V](BinarytoDecimal.v)             |
| [C](BinarytoDecimal.c)         | [Dart](BinarytoDecimal.dart)           | [Groovy](BinarytoDecimal.gvy)          | [Lua](BinarytoDecimal.lua)         | [Powershell](BinarytoDecimal.ps1) | [Scala](BinarytoDecimal.scala)  | [Visual Basic](BinarytoDecimal.vb) |
| [C#](BinarytoDecimal.cs)       | [DogeScript](BinarytoDecimal.djs)      | [Haskell](BinarytoDecimal.hs)          | [Nim](BinarytoDecimal.nim)         | [Python](BinarytoDecimal.py)      | [Scratch](BinarytoDecimal.sb3)  | [Zig](BinarytoDecimal.zig)         |
| [C++](BinarytoDecimal.cpp)     | [Elixir](BinarytoDecimal.exs)          | [Java](BinarytoDecimal.java)           | [Objective-C](BinarytoDecimal.m)   | [R](BinarytoDecimal.r)            | [Scheme](BinarytoDecimal.scm)   |
| [Clojure](BinarytoDecimal.clj) | [F#](BinarytoDecimal.fsx)              | [JavaScript](BinarytoDecimal.js)       | [OCaml](BinarytoDecimal.ml)        | [Reason](BinarytoDecimal.re)      | [Swift](BinarytoDecimal.swift)  |

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
