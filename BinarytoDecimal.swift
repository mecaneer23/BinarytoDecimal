import Foundation;

func BinarytoDecimal(_ binaryNumber: Int) -> Int {
	let value: String = String(binaryNumber);
	let len: Int = value.count;
	var output: Int = 0;
	for position in 0...len-1 {
		let char:Character = value[value.index(value.startIndex, offsetBy: position)];
		if (char == "1") {
			output += Int(NSDecimalNumber(value: pow(Double(2), Double(len-1-position))));
		} else if (char == "0") {
			continue;
		} else {
			print("Make sure you only input binary values");
			exit(1);
		}
	}
	return output;
}

print("Binary Number: ", terminator:"");
let input = Int(readLine()!);
print(BinarytoDecimal(input as! Int));