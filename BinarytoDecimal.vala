// valac BinarytoDecimal.vala -X -lm; ./BinarytoDecimal
using GLib.Math;


int BinarytoDecimal(int binaryNumber) {
    string value = binaryNumber.to_string();
    int len = value.length;
    int output = 0;
    for (int position = 0; position < len; position++) {
    	char chr = value[position];
	if (chr == '1') {
	    output += (int) Math.pow(2, len - 1 - position);
	} else if (chr == '0') {
	    continue;
	} else {
	    stdout.printf("Make sure you only input binary values\n");
	    return -1;
	}
    }
    return output;
}


int main (string[] args) {
    stdout.printf("Binary Number: ");
    stdout.printf("%d\n", BinarytoDecimal(int.parse(stdin.read_line()))); 
    return 0;
}
