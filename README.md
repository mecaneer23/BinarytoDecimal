# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (50)

| Language                                           | Extension                                 |
| -------------------------------------------------- | ----------------------------------------- |
| [Ada](BinarytoDecimal.adb)                         | [.adb](BinarytoDecimal.adb)               |
| [Bash](BinarytoDecimal.sh)                         | [.sh](BinarytoDecimal.sh)                 |
| [Batch](BinarytoDecimal.bat)                       | [.bat](BinarytoDecimal.bat)               |
| [Bitsbox (JavaScript)](BinarytoDecimal.bitsbox.js) | [.bitsbox.js](BinarytoDecimal.bitsbox.js) |
| [C](BinarytoDecimal.c)                             | [.c](BinarytoDecimal.c)                   |
| [C#](BinarytoDecimal.cs)                           | [.cs](BinarytoDecimal.cs)                 |
| [C++](BinarytoDecimal.cpp)                         | [.cpp](BinarytoDecimal.cpp)               |
| [Clojure](BinarytoDecimal.clj)                     | [.clj](BinarytoDecimal.clj)               |
| [CoffeeScript](BinarytoDecimal.coffee)             | [.coffee](BinarytoDecimal.coffee)         |
| [Crystal](BinarytoDecimal.cr)                      | [.cr](BinarytoDecimal.cr)                 |
| [CSS](BinarytoDecimal.css)                         | [.css](BinarytoDecimal.css)               |
| [D](BinarytoDecimal.d)                             | [.d](BinarytoDecimal.d)                   |
| [Dart](BinarytoDecimal.dart)                       | [.dart](BinarytoDecimal.dart)             |
| [DogeScript](BinarytoDecimal.djs)                  | [.djs](BinarytoDecimal.djs)               |
| [Elixir](BinarytoDecimal.exs)                      | [.exs](BinarytoDecimal.exs)               |
| [F#](BinarytoDecimal.fsx)                          | [.fsx](BinarytoDecimal.fsx)               |
| [Forth](BinarytoDecimal.fth)                       | [.fth](BinarytoDecimal.fth)               |
| [Gadot (GDScript)](BinarytoDecimal.gd)             | [.gd](BinarytoDecimal.gd)                 |
| [Go](BinarytoDecimal.go)                           | [.go](BinarytoDecimal.go)                 |
| [Groovy](BinarytoDecimal.gvy)                      | [.gvy](BinarytoDecimal.gvy)               |
| [Haskell](BinarytoDecimal.hs)                      | [.hs](BinarytoDecimal.hs)                 |
| [HTML (JavaScript)](BinarytoDecimal.html)          | [.html](BinarytoDecimal.html)             |
| [Java](BinarytoDecimal.java)                       | [.java](BinarytoDecimal.java)             |
| [JavaScript](BinarytoDecimal.js)                   | [.js](BinarytoDecimal.js)                 |
| [Julia](BinarytoDecimal.jl)                        | [.jl](BinarytoDecimal.jl)                 |
| [Kotlin](BinarytoDecimal.kt)                       | [.kt](BinarytoDecimal.kt)                 |
| [Common Lisp](BinarytoDecimal.lsp)                 | [.lsp](BinarytoDecimal.lsp)               |
| [Lua](BinarytoDecimal.lua)                         | [.lua](BinarytoDecimal.lua)               |
| [Nim](BinarytoDecimal.nim)                         | [.nim](BinarytoDecimal.nim)               |
| [Objective-C](BinarytoDecimal.m)                   | [.m](BinarytoDecimal.m)                   |
| [OCaml](BinarytoDecimal.ml)                        | [.ml](BinarytoDecimal.ml)                 |
| [Pascal](BinarytoDecimal.pas)                      | [.pas](BinarytoDecimal.pas)               |
| [Perl](BinarytoDecimal.pl)                         | [.pl](BinarytoDecimal.pl)                 |
| [PHP](BinarytoDecimal.php)                         | [.php](BinarytoDecimal.php)               |
| [Powershell](BinarytoDecimal.ps1)                  | [.ps1](BinarytoDecimal.ps1)               |
| [Python](BinarytoDecimal.py)                       | [.py](BinarytoDecimal.py)                 |
| [R](BinarytoDecimal.r)                             | [.r](BinarytoDecimal.r)                   |
| [Reason](BinarytoDecimal.re)                       | [.re](BinarytoDecimal.re)                 |
| [Rescript](BinarytoDecimal.res)                    | [.res](BinarytoDecimal.res)               |
| [Ruby](BinarytoDecimal.rb)                         | [.rb](BinarytoDecimal.rb)                 |
| [Rust](BinarytoDecimal.rs)                         | [.rs](BinarytoDecimal.rs)                 |
| [Scala](BinarytoDecimal.scala)                     | [.scala](BinarytoDecimal.scala)           |
| [Scratch](BinarytoDecimal.sb3)                     | [.sb3](BinarytoDecimal.sb3)               |
| [Scheme](BinarytoDecimal.scm)                      | [.scm](BinarytoDecimal.scm)               |
| [Swift](BinarytoDecimal.swift)                     | [.swift](BinarytoDecimal.swift)           |
| [Tcl](BinarytoDecimal.tcl)                         | [.tcl](BinarytoDecimal.tcl)               |
| [TypeScript](BinarytoDecimal.ts)                   | [.ts](BinarytoDecimal.ts)                 |
| [V](BinarytoDecimal.v)                             | [.v](BinarytoDecimal.v)                   |
| [Visual Basic](BinarytoDecimal.vb)                 | [.vb](BinarytoDecimal.vb)                 |
| [Zig](BinarytoDecimal.zig)                         | [.zig](BinarytoDecimal.zig)               |

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
