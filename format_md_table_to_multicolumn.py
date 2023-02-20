#!/usr/bin/env python3

# with open("copy_readme.md", "r") as f:
#     file = f.read().split("\n")

file = """

| [Ada](BinarytoDecimal.adb) |
| [Bash](BinarytoDecimal.sh) |
| [Batch](BinarytoDecimal.bat) |
| [C](BinarytoDecimal.c) |
| [C#](BinarytoDecimal.cs) |
| [C++](BinarytoDecimal.cpp) |
| [Clojure](BinarytoDecimal.clj) |
| [CoffeeScript](BinarytoDecimal.coffee) |
| [Common Lisp](BinarytoDecimal.lsp) |
| [Crystal](BinarytoDecimal.cr) |
| [D](BinarytoDecimal.d) |
| [Dart](BinarytoDecimal.dart) |
| [DogeScript](BinarytoDecimal.djs) |
| [Elixir](BinarytoDecimal.exs) |
| [F#](BinarytoDecimal.fsx) |
| [Forth](BinarytoDecimal.fth) |
| [Fortran](BinarytoDecimal.f90) |
| [Gadot (GDScript)](BinarytoDecimal.gd) |
| [Go](BinarytoDecimal.go) |
| [Groovy](BinarytoDecimal.gvy) |
| [Haskell](BinarytoDecimal.hs) |
| [Java](BinarytoDecimal.java) |
| [JavaScript](BinarytoDecimal.js) |
| [Julia](BinarytoDecimal.jl) |
| [Kotlin](BinarytoDecimal.kt) |
| [Lua](BinarytoDecimal.lua) |
| [Nim](BinarytoDecimal.nim) |
| [Objective-C](BinarytoDecimal.m) |
| [OCaml](BinarytoDecimal.ml) |
| [Pascal](BinarytoDecimal.pas) |
| [Perl](BinarytoDecimal.pl) |
| [PHP](BinarytoDecimal.php) |
| [Powershell](BinarytoDecimal.ps1) |
| [Python](BinarytoDecimal.py) |
| [R](BinarytoDecimal.r) |
| [Racket](BinarytoDecimal.rkt) |
| [Reason](BinarytoDecimal.re) |
| [Rescript](BinarytoDecimal.res) |
| [Ruby](BinarytoDecimal.rb) |
| [Rust](BinarytoDecimal.rs) |
| [Scala](BinarytoDecimal.scala) |
| [Scheme](BinarytoDecimal.scm) |
| [Scratch](BinarytoDecimal.sb3) |
| [Swift](BinarytoDecimal.swift) |
| [Tcl](BinarytoDecimal.tcl) |
| [TypeScript](BinarytoDecimal.ts) |
| [V](BinarytoDecimal.v) |
| [Vala](BinarytoDecimal.vala) |
| [Visual Basic](BinarytoDecimal.vb) |
| [Vimscript](BinarytoDecimal.vim) |
| [Zig](BinarytoDecimal.zig) |
"""

# start_table_line = -1
# end_table_line = -1
# for i, v in enumerate(file):
#     if v.startswith("|") and start_table_line == -1:
#         start_table_line = i
#     if v == "" and start_table_line > -1:
#         end_table_line = i
#         break

# table_lines = file[start_table_line:end_table_line]
table_lines = file.split("\n")
# print("\n".join(table_lines))

# columns = int(input("Enter the number of full columns: "))
# rows = (len(table_lines) - 2)//columns
columns, rows = 7, 8

output_list = [["|"] for _ in range(rows)]
for i, v in enumerate(table_lines[2:]):
    for j in range(rows):
        if i % rows == j:
            output_list[j].append(v[1:])

output_string = f"| Language {'|'*columns}\n|{' - |'*columns}\n"
for i in output_list:
    output_string += "".join(i) + "\n"

with open("copy_readme.md", "w") as f:
    f.write(output_string)

print(f"{len(table_lines) - 3} files")