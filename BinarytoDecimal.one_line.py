#!/usr/bin/env python3

print((lambda x:(lambda n:sum([(lambda c,l,i:(2**(l-1-i)*int(c))if c in"01"else exit("Make sure you only input binary values"))(n[i],len(n),i)for i in range(len(n))]))(str(x)))(int(input("Binary Number: "))))
