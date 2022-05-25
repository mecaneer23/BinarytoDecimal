#!/usr/bin/env -S godot -s
extends SceneTree

func BinarytoDecimal(binaryNumber):
    var value = str(binaryNumber)
    var length = len(value)
    var output = 0
    for position in range(length):
        var chr = value[position]
        if chr == '1':
            output += pow(2, length - 1 - position)
        elif chr == '0':
            continue
        else:
            return "Make sure you only input binary values"
    return output

func _init():
    if len(OS.get_cmdline_args()) < 3:
        print("NOTE: command line input is not currently supported. Please rerun the executable with an input as the first argument.")
    else:
        print(BinarytoDecimal(int(OS.get_cmdline_args()[2])))
