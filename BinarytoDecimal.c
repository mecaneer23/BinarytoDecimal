#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

int BinarytoDecimal(int binaryNumber) {
	if (binaryNumber == 0) {
		return 0;
	}
	int len = floor(log10(binaryNumber)) + 1;
	char value[len + 1];
	itoa(binaryNumber, value, 10);
	int output = 0;
	for (int position = 0; position < len; position++) {
		char chr = value[position];
		if (chr == '1') {
			output += pow(2, len - 1 - position);
		} else if (chr == '0') {

		} else {
			return -1;
		}
	}
	return output;
}

int main(void) {
	int num;
	printf("%s", "Binary Number: ");
	scanf("%d", &num);
	int result = BinarytoDecimal(num);
	if (result == -1) {
		printf("%s\n", "Make sure you only input binary values");
	} else {
		printf("%d", result);
	}
}