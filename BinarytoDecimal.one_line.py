#!/usr/bin/env python3

print((lambda n:sum([(lambda c,l,i:(2**(l-1-i)*int(c))if c in"01"else exit("Make sure you only input binary values"))(str(n)[i],len(str(n)),i)for i in range(len(str(n)))]))(int(input("Binary Number: "))))
