function BinaryToDecimal(binaryNumber) {
	var value = binaryNumber.toString(10);
	var length = value.length;
	var output = 0;
	for (position = 0; position < length; position++) {
		char = value.charAt(position);
		if (char == '1') {
			output += Math.pow(2, length - 1 - position);
		} else if (char == '0') {
			continue;
		} else {
			return "Make sure you only input binary values";
		}
	}
	return output;
}

const readline = require('readline');

r1 = readline.createInterface({
	input: process.stdin,
	output: process.stdout
});
r1.question("Binary Number: ", function(num) {
	console.log(BinaryToDecimal(num));
	r1.close();
});
