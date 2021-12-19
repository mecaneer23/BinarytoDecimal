import 'dart:math';
import 'dart:io';

num BinarytoDecimal(num binaryNumber) {
    String value = binaryNumber.toString();
    num length = value.length;
    num output = 0;
    for (int position = 0; position < length; position++) {
        String ch = value.substring(position, position + 1);
        if (ch == '1') {
            output += pow(2, length - position - 1);
        } else if (ch == '0') {
            output += 0;
        } else {
            return -1;
        }
    }
    return output;
}

void main() {
    stdout.write("Binary Number: ");
    print(BinarytoDecimal(int.parse(stdin.readLineSync()!)));
}