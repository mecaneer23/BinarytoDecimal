#include <iostream>
#include <cstring>
#include <math.h>
using namespace std;

int BinaryToDecimal(long long binaryNumber) {
	string value = to_string(binaryNumber);
	long output = 0;
	for (long position = 0; position < value.length(); ++position) {
		if (value.at(position) == '1') {
			if (position == value.length() - 1) {
				output++;
			} else {
				output += pow(2, value.length() - 1 - position);
			}
		} else if (value.at(position) == '0') {

		} else {
			cout << "Make sure you only input binary values\n";
			exit(0);
		}
	}
	return output;
}

int main() {
	string input;
	cout << "Binary Number: ";
	getline(cin, input);
	long long int num = stoll(input);
	cout << BinaryToDecimal(num) << endl;
	return 0;
}
