#!/usr/bin/env python3

import sys

print(
    (
        lambda binary_number: sum(
            [
                (
                    lambda char, length, position: (
                        2 ** (length - 1 - position) * int(char)
                    )
                    if char in "01"
                    else sys.exit("Make sure you only input binary values")
                )(str(binary_number)[position], len(str(binary_number)), position)
                for position in range(len(str(binary_number)))
            ]
        )
    )(int(input("Binary Number: ")))
)
