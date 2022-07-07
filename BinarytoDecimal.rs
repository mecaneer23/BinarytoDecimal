// cargo run
use std::io;
use std::io::Write;

fn binary_to_decimal(binary_number: i32) -> u32 {
	let value: String = binary_number.to_string();
	let length: usize = value.chars().count();
	let mut output: u32 = 0;
	let mut chr: Option<char>;
	for position in 0..length {
		chr = value.chars().nth(position);
		if chr == Some('1') {
			output += u32::pow(2, (length - 1 - position) as u32);
		} else if chr == Some('0') {
			continue;
		} else {
			println!("Make sure you only input binary values");
			return 0;
		}
	}
	return output;
}

fn input(query_string: &str) -> i32 {
	print!("{}", query_string);
	io::stdout().flush().unwrap();
	let mut input = String::new();
	io::stdin().read_line(&mut input).unwrap();
	let input: i32 = input.trim().parse().unwrap();
	return input;
}

fn main() {
	println!("{}", binary_to_decimal(input("Binary Number: ")));
}