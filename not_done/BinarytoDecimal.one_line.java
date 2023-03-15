import java.util.Scanner;

public class BinarytoDecimal {
    public static void main(String[] args) {
        System.out.print("Binary Number: ");
        Scanner inp = new Scanner(System.in);
        System.out.println(
            (n)->{
                for(int i=0,a=0;i<n.length();i++){
                a+=
                    (c, l, i) -> {
                        (c == "0" || c == "1") ? Math.pow(2,l-1-i)*Char.toInt(c) : () -> {System.err.println("Make sure you only input binary values"); System.exit(1);}
                    }(n.charAt(i),n.length(),i);
                }
                return a;}(inp.nextLong(););
        );
        inp.close();
    }

    // public static int BinarytoDecimal(Long binaryNumber) {
    //     String value = Long.toString(binaryNumber);
    //     int length = value.length();
    //     int output = 0;
    //     for (int position = 0; position < length; position++) {
    //         char chr = value.charAt(position);
    //         if (chr == '1') {
    //             output += Math.pow(2, length - 1 - position);
    //         } else if (chr == '0') {
    //             continue;
    //         } else {
    //             System.err.println("Make sure you only input binary values");
    //             System.exit(1);
    //         }
    //     }
    //     return output;
    // }
    // public static void main(String[] args) {
    //     System.out.print("Binary Number: ");
    //     Scanner inp = new Scanner(System.in);
    //     System.out.println(BinarytoDecimal(inp.nextLong()));
    //     inp.close();
    // }
}
