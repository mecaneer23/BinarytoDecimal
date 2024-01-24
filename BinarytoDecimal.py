#!/usr/bin/env python3
# pylint: disable=invalid-name
"""BinarytoDecimal in Python"""

def binary_to_decimal(binary_number: int) -> int | str:
    """
    Convert a binary number to a decimal number.

    Return a string with an error if the binary
    number is not valid.
    """
    value = str(binary_number)
    length = len(value)
    output = 0
    for position in range(length):
        char = value[position]
        if char == "1":
            output += 2 ** (length - 1 - position)
        elif char == "0":
            continue
        else:
            return "Make sure you only input binary values"
    return output


if __name__ == "__main__":
    print(binary_to_decimal(int(input("Binary Number: "))))
