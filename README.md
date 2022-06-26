# BinarytoDecimal

Binary to decimal converters in many languages

## File endings error

Resolve by opening the file in question in vim and running the following command

```vim
:set ff=unix
```

## Current languages (47)

- Bash: .sh
- Bitsbox (JavaScript): .bitsbox.js
- C: .c
- C#: .cs
- C++: .cpp
- Clojure: .clj
- CoffeeScript: .coffee
- Crystal: .cr
- CSS: .css
- D: .d
- Dart: .dart
- DogeScript: .djs
- Elixir: .exs
- F#: .fsx
- Forth: .fth
- Gadot (GDScript): .gd
- Go: .go
- Groovy: .gvy
- Haskell: .hs
- HTML (JavaScript): .html
- Java: .java
- JavaScript: .js
- Julia: .jl
- Kotlin: .kt
- Common Lisp: .lsp
- Lua: .lua
- Nim: .nim
- Objective-C: .m
- OCaml: .ml
- Pascal: .pas
- Perl: .pl
- PHP: .php
- Powershell: .ps1
- Python: .py
- R: .r
- Reason: .re
- Rescript: .res
- Ruby: .rb
- Rust: .rs
- Scala: .scala
- Scratch: .sb3
- Scheme: .scm
- Swift: .swift
- Tcl: .tcl
- TypeScript: .ts
- V: .v
- Visual Basic: .vb

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
