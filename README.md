# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (47)

| Language                               |
| -------------------------------------- |
| [Ada](BinarytoDecimal.adb)             |
| [Bash](BinarytoDecimal.sh)             |
| [Batch](BinarytoDecimal.bat)           |
| [C](BinarytoDecimal.c)                 |
| [C#](BinarytoDecimal.cs)               |
| [C++](BinarytoDecimal.cpp)             |
| [Clojure](BinarytoDecimal.clj)         |
| [CoffeeScript](BinarytoDecimal.coffee) |
| [Crystal](BinarytoDecimal.cr)          |
| [D](BinarytoDecimal.d)                 |
| [Dart](BinarytoDecimal.dart)           |
| [DogeScript](BinarytoDecimal.djs)      |
| [Elixir](BinarytoDecimal.exs)          |
| [F#](BinarytoDecimal.fsx)              |
| [Forth](BinarytoDecimal.fth)           |
| [Gadot (GDScript)](BinarytoDecimal.gd) |
| [Go](BinarytoDecimal.go)               |
| [Groovy](BinarytoDecimal.gvy)          |
| [Haskell](BinarytoDecimal.hs)          |
| [Java](BinarytoDecimal.java)           |
| [JavaScript](BinarytoDecimal.js)       |
| [Julia](BinarytoDecimal.jl)            |
| [Kotlin](BinarytoDecimal.kt)           |
| [Common Lisp](BinarytoDecimal.lsp)     |
| [Lua](BinarytoDecimal.lua)             |
| [Nim](BinarytoDecimal.nim)             |
| [Objective-C](BinarytoDecimal.m)       |
| [OCaml](BinarytoDecimal.ml)            |
| [Pascal](BinarytoDecimal.pas)          |
| [Perl](BinarytoDecimal.pl)             |
| [PHP](BinarytoDecimal.php)             |
| [Powershell](BinarytoDecimal.ps1)      |
| [Python](BinarytoDecimal.py)           |
| [R](BinarytoDecimal.r)                 |
| [Reason](BinarytoDecimal.re)           |
| [Rescript](BinarytoDecimal.res)        |
| [Ruby](BinarytoDecimal.rb)             |
| [Rust](BinarytoDecimal.rs)             |
| [Scala](BinarytoDecimal.scala)         |
| [Scratch](BinarytoDecimal.sb3)         |
| [Scheme](BinarytoDecimal.scm)          |
| [Swift](BinarytoDecimal.swift)         |
| [Tcl](BinarytoDecimal.tcl)             |
| [TypeScript](BinarytoDecimal.ts)       |
| [V](BinarytoDecimal.v)                 |
| [Visual Basic](BinarytoDecimal.vb)     |
| [Zig](BinarytoDecimal.zig)             |

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
