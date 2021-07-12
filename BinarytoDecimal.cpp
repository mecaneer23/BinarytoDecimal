#include <iostream>
#include <cstring>
#include <math.h>
using namespace std;

int BinaryToDecimal(long long binaryNumber) {
	string value = to_string(binaryNumber);
	// cout << value << " = value\n" << binaryNumber << " = binNum\n\n";
	long output = 0;
	for (long position = 0; position < value.length(); ++position) {
		// cout << "value at position is: " << to_string(value.at(position)) << '\n' << value.at(position) << endl;
		// cout << position << " = position" << endl;
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
	// return 100;
}

int main() {
	string input;
	cout << "Binary Number: ";
	getline(cin, input);
	// cout << input;
	// string temp = input.substr(13);
	// int num = stoi(temp);
	// cout << stoi(input) << " = stoi input" << endl;
	long long int num = stoll(input);
	cout << BinaryToDecimal(num) << endl;
	return 0;
}