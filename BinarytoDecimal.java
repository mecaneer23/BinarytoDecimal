import java.util.Scanner;

public class BinarytoDecimal {
	public static void main(String[] args) {
		System.out.print("Binary Number: ");
		Scanner inp = new Scanner(System.in);
		String input = inp.nextLine();
		inp.close();
		Long num = Long.parseLong(input);
		System.out.println(BinaryToDecimal(num));
	}
	public static int BinaryToDecimal(Long binaryNumber) {
		String value = Long.toString(binaryNumber);
		int length = value.length();
		int output = 0;
		for (int position = 0; position < length; position++) {
			char chr = value.charAt(position);
			if (chr == '1') {
				output += Math.pow(2, length - 1 - position);
			} else if (chr == '0') {

			} else {
				System.err.println("Make sure you only input binary values");
				System.exit(1);
			}
		}
		return output;
	}
}