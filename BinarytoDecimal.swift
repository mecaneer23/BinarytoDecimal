import Foundation;

func BinarytoDecimal(_ binaryNumber: Int) -> Int {
	let value:String = String(binaryNumber);
	var output:Int = 0;
	for position in 0...value.count-1 {
		if (value[value.index(value.startIndex, offsetBy: position)] == "1") {
      let decimal_two = Double(2);
      let power_of = Double(value.count-1-position)
      let temp = pow(decimal_two, power_of);
      let result = NSDecimalNumber(value: temp);
			output += Int(result);
		} else if (value[value.index(value.startIndex, offsetBy: position)] == "0") {
			
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