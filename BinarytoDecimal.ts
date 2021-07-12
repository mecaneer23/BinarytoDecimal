function BinaryToDecimal(binaryNumber) {
	var value = binaryNumber.toString(10);
	var output = 0;
	for (var position = 0; position < value.length; position++) {
		if (value.charAt(position) == '1') {
			if (position == value.length - 1) {
				output++;
			} else {
				output += Math.pow(2, value.length - 1 - position);
			}
		} else if (value.charAt(position) == '0') {
			
		} else {
			return "Make sure you only input binary values";
		}
	}
	return output;
}
function main() {
	const readline = require('readline').createInterface({
		input: process.stdin,
		output: process.stdout
	})
	readline.question("Binary Number: ", num => {
		console.log(BinaryToDecimal(num));
		readline.close();
	})
}
main()