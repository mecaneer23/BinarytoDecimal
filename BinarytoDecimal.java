import java.util.Scanner;

public class BinarytoDecimal {
	public static void main(String[] args) {
		System.out.print("Binary Number: ");
		Scanner inp = new Scanner(System.in);
		String input = inp.nextLine();
		Long num = Long.parseLong(input);
		System.out.println(BinaryToDecimal(num));
	}
	public static int BinaryToDecimal(Long binaryNumber) {
		String value = Long.toString(binaryNumber);
		int output = 0;
		for (int position = 0; position < value.length(); position++) {
			if (value.charAt(position) == '1') {
				if (position == value.length() - 1) {
					output++;
				} else {
					output += Math.pow(2, value.length() - 1 - position);
				}
			} else if (value.charAt(position) == '0') {

			} else {
				System.err.println("Make sure you only input binary values");
			}
		}
		return output;
	}
}