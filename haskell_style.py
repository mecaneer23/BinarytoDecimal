#!/bin/env python3
def if_check(char, length, position):
    if char == '1':
        return 2**(length - 1 - position)
    elif char == '0':
        return 0
    else:
        print("Make sure you only input binary values")
        exit(-1)


def binary_to_decimal(binary_number):
    return sum([if_check(str(binary_number)[position], len(str(binary_number)), position) for position in range(len(str(binary_number)))])


if __name__ == "__main__":
    print(binary_to_decimal(int(input("Binary Number: "))))
