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
    "Java Blocks": ".blk",
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
    "Vimscript": ".vim",
    "Visual Basic": ".vb",
    "Zig": ".zig",
}


def chunk(iterable, chunk_size=2):
    return [
        list(iterable)[i : i + chunk_size] for i in range(0, len(iterable), chunk_size)
    ]


def get_column_lengths(table, cols):
    return [len(max(i, key=len)) for i in chunk(table, cols)]


def generate_table(pairs, row_count, column_lengths):
    table = dict(sorted(pairs.items(), key=lambda pair: (pair[0].lower(), pair[1])))
    if any([a != b for a, b in zip(pairs.items(), table.items())]):
        print("WARNING: table is not sorted")
    rows = ["|" for _ in range(row_count)]
    current_column = -1
    for (i, k), v in zip(enumerate(table), table.values()):
        if i % row_count == 0:
            current_column += 1
        for j in range(row_count):
            if i % row_count == j:
                rows[j] += (
                    f" [{k}](BinarytoDecimal{v}) ".ljust(
                        column_lengths[current_column] + 21
                    )
                    + "|"
                )
    return rows, rows[0].count("|") - 1


def table_to_string(rows: list[str], cols: int, column_lengths):
    assert cols == len(column_lengths), f"{column_lengths =}, {cols =}"
    output = "| Language" + " " * (column_lengths[0] + 12) + "|"
    for i in range(cols - 1):
        output += " " * (column_lengths[i + 1] + 21) + "|"
    output += "\n|"
    for i in range(cols):
        output += " " + "-" * (column_lengths[i] + 19) + " |"
    return output + "\n" + "\n".join(rows)


def get_factors(number):
    return [i for i in range(1, number + 1) if number % i == 0]


def write_to_file(filename, string):
    with open(filename, "w") as f:
        f.write(string)
    print(f"Output written to `{filename}`")


if __name__ == "__main__":
    print(f"{len(table_items)} files, divisible by: {get_factors(len(table_items))}")
    row_count = len(table_items) // int(input("Complete columns: "))
    column_lengths = get_column_lengths(
        ["".join((k, v)) for k, v in table_items.items()], row_count
    )
    rows, cols = generate_table(table_items, row_count, column_lengths)
    write_to_file("copy_readme.md", table_to_string(rows, cols, column_lengths))
