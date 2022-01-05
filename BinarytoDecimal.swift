import Foundation;

func BinarytoDecimal(_ binaryNumber: Int) -> Int {
	let value:String = String(binaryNumber);
	let len:Int = value.count;
	var output:Int = 0;
	for position in 0...len-1 {
		let char:Character = value[value.index(value.startIndex, offsetBy: position)];
		if (char == "1") {
			let decimal_two = Double(2);
			let power_of = Double(len-1-position)
			let temp = pow(decimal_two, power_of);
			let result = NSDecimalNumber(value: temp);
			output += Int(result);
		} else if (char == "0") {
			
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