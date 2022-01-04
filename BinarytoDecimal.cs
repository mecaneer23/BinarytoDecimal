using System;
public class BinarytoDecimal {
	public static int BinaryToDecimal(int binaryNumber) {
		string value = binaryNumber.ToString();
		int length = value.Length;
		int output = 0;
		for (int position = 0; position < length; position++) {
			char chr = value[position];
			if (chr == '1') {
				output += (int)(1 << length - 1 - position);
			} else if (chr == '0') {
				continue;
			} else {
				Console.WriteLine("Make sure you only input binary values");
				return -1;
			}
		}
		return output;
	}
	public static void Main(string[] args) {
		Console.Write("Binary Number: ");
		Console.WriteLine(BinaryToDecimal((int)Int64.Parse(Console.ReadLine())));
	}
}