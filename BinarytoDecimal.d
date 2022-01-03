#!/usr/bin/env dub
/+ dub.sdl:
    name "BinarytoDecimal"
+/
import std.stdio;
import std.conv;
import std.string;
import std.math.exponential;

int BinarytoDecimal(int binaryNumber) {
	string value = to!string(binaryNumber);
	int len = cast(int)value.length;
	int output = 0;
	for (int position = 0; position < len; position++) {
		char chr = value[position];
		if (chr == '1') {
            output += pow(2, len - 1 - position);
        } else if (chr == '0') {
            continue;
        } else {
            writeln("Make sure you only input binary values");
            return 0;
        }
    }
	return output;
}

void main() {
	writef("Binary Number: ");
    string input = strip(readln());
    int num = to!int(input);
	writef("%d\n", BinarytoDecimal(num));
}