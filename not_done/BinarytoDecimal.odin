// odin run BinarytoDecimal.odin
package BinarytoDecimal;

fn BinarytoDecimal(binaryNumber: i32) -> i32 {
    let value = binaryNumber.to_string();
    let length = value.len();
    let mut output = 0;
    for position in 0..length {
        let chr = &value[position..position+1];
        if chr == "1" {
            output += 2.pow((length-1-position) as u32);
        } else if chr == "0" {
            continue;
        } else {
            println!("Make sure you only input binary values");
            std::process::exit(-1);
        }
    }
    output
}

fn main() {
    println!("Binary Number: ");
    let num = read_line().trim().parse::<i32>().unwrap();
    println!("{}", BinarytoDecimal(num));
}
