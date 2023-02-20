#!/usr/bin/env python3

table_items = {
    "Ada": ".adb",
    "Bash": ".sh",
    "Batch": ".bat",
    "C": ".c",
    "C#": ".cs",
    "C++": ".cpp",
    "Clojure": ".clj",
    "CoffeeScript": ".coffee",
    "Common Lisp": ".lsp",
    "Crystal": ".cr",
    "D": ".d",
    "Dart": ".dart",
    "DogeScript": ".djs",
    "Elixir": ".exs",
    "F#": ".fsx",
    "Forth": ".fth",
    "Fortran": ".f90",
    "Gadot (GDScript)": ".gd",
    "Go": ".go",
    "Groovy": ".gvy",
    "Haskell": ".hs",
    "Java": ".java",
    "JavaScript": ".js",
    "Julia": ".jl",
    "Kotlin": ".kt",
    "Lua": ".lua",
    "Nim": ".nim",
    "Objective-C": ".m",
    "OCaml": ".ml",
    "Pascal": ".pas",
    "Perl": ".pl",
    "PHP": ".php",
    "Powershell": ".ps1",
    "Python": ".py",
    "R": ".r",
    "Racket": ".rkt",
    "Reason": ".re",
    "Rescript": ".res",
    "Ruby": ".rb",
    "Rust": ".rs",
    "Scala": ".scala",
    "Scheme": ".scm",
    "Scratch": ".sb3",
    "Swift": ".swift",
    "Tcl": ".tcl",
    "TypeScript": ".ts",
    "V": ".v",
    "Vala": ".vala",
    "Visual Basic": ".vb",
    "Vimscript": ".vim",
    "Zig": ".zig",
}


def generate_table(pairs, row_count, alphabetize=True):
    table = (
        dict(sorted(pairs.items()))
        if alphabetize
        else pairs
    )
    rows = ["|" for _ in range(row_count)]
    for (i, k), v in zip(enumerate(table), table.values()):
        for j in range(row_count):
            if i % row_count == j:
                rows[j] += f" [{k}](BinarytoDecimal{v}) |"
    return rows, rows[0].count("|") - 1


if __name__ == "__main__":
    with open("copy_readme.md", "w") as f:
        rows, cols = generate_table(
            table_items, len(table_items) // int(input("Complete columns: "))
        )
        f.write(f"| Language{' |'*cols}\n|{' - |'*cols}\n" + "\n".join(rows))

print(f"{len(table_items)} files")


# TODO:
# add spacing automatically (eliminates necessity for external markdown formatter)
