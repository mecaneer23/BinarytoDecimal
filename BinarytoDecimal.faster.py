#!/usr/bin/env python3
# pylint: disable=invalid-name
"""BinarytoDecimal in Python"""

from math import floor, log10

def binary_to_decimal(binary_number: int) -> int:
    """
    Convert a binary number to a decimal number.

    Raise ValueError if the binary number is not valid.
    """
    if binary_number == 0:
        return 0

    # TODO: remove this for loop by using a better algorithm
    for num in str(binary_number):
        if num not in "01":
            raise ValueError("Make sure you only input binary values")
    output = 0
    for position in range(floor(log10(binary_number)) + 1):
        output += (binary_number % 10) * (2 ** position)
        binary_number //= 10
    return output


if __name__ == "__main__":
    print(binary_to_decimal(int(input("Binary Number: "))))
