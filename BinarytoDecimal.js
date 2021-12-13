function BinaryToDecimal(binaryNumber) {
	var value = binaryNumber.toString(10);
	var output = 0;
	for (position = 0; position < value.length; position++) {
		if (value.charAt(position) == '1') {
			output += Math.pow(2, value.length - 1 - position);
		} else if (value.charAt(position) == '0') {
			
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