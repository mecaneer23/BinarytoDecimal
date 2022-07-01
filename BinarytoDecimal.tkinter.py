#!/usr/bin/env python3

from tkinter import Tk, ttk, StringVar
from BinarytoDecimal import BinarytoDecimal


def main():
    root = Tk()
    root.title("Binary-Decimal Converter")
    bn = StringVar()
    output = StringVar(value="Decimal Number: ")

    def set_output(event=None):
        output.set(f"Decimal Number: {BinarytoDecimal(bn.get())}")
        bn.set("")

    ttk.Label(root, text="Binary Number:").grid(row=0, column=0)
    inp = ttk.Entry(root, textvariable=bn)
    inp.grid(row=0, column=1)
    inp.focus()
    root.bind("<Return>", set_output)
    ttk.Button(root, text="Calculate", command=set_output).grid(row=0, column=2)
    ttk.Label(root, textvariable=output).grid(row=1, column=0, columnspan=3)
    root.mainloop()


if __name__ == "__main__":
    main()
