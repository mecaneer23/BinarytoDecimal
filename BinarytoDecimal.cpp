#include <iostream>
#include <cstring>
#include <math.h>
using namespace std;

int BinaryToDecimal(long long binaryNumber) {
    string value = to_string(binaryNumber);
    int length = value.length();
    long output = 0;
    for (long position = 0; position < length; ++position) {
        char chr = value.at(position);
        if (chr == '1') {
            output += pow(2, length - 1 - position);
        } else if (chr == '0') {

        } else {
            cout << "Make sure you only input binary values\n";
            exit(-1);
        }
    }
    return output;
}

int main() {
    string input;
    cout << "Binary Number: ";
    getline(cin, input);
    cout << BinaryToDecimal(stoll(input)) << endl;
    return 0;
}
