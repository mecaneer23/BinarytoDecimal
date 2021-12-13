using System;
public class BinarytoDecimal {
	public static void Main(string[] args) {
		Console.Write("Binary Number: ");
		int input = BinaryToDecimal((int)Int64.Parse(Console.ReadLine()));
		if (input == -1) {
			Console.WriteLine("Make sure you only input binary values");
		} else {
			Console.WriteLine(input);
		}
	}
	public static int BinaryToDecimal(int binaryNumber) {
		string value = binaryNumber.ToString();
		int output = 0;
		for (int position = 0; position < value.Length; position++) {
			if (value[position] == '1') {
				output += (int)(1 << value.Length - 1 - position);
			} else if (value[position] == '0') {

			} else {
				return -1;
			}
		}
		return output;
	}
}