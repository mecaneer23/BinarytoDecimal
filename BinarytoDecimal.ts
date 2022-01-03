function BinaryToDecimal(binaryNumber: number): number {
	var value: string = binaryNumber.toString(10);
	var length: number = value.length;
	let output: number = 0;
	for (let position: number = 0; position < length; position++) {
		let char = value[position];
		if (char == '1') {
			output += Math.pow(2, length - 1 - position);
		} else if (char == '0') {
			continue
		} else {
			console.log("Make sure you only input binary values");
			exit(-1);
		}
	}
	return output;
}

import { exit } from "process";
import { createInterface } from "readline";

var r1 = createInterface({
	input: process.stdin,
	output: process.stdout
});
r1.question("Binary Number: ", function(num) {
	console.log(BinaryToDecimal(parseInt(num)));
	r1.close();
});