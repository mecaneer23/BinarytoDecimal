// cargo run
use std::io;
use std::io::Write;

fn binary_to_decimal(binary_digits: impl IntoIterator<Item = u8>) -> u32 {
    binary_digits
        .into_iter()
        .scan((), |_, r| r.ok().filter(|b| matches!(b, b'0' | b'1')))
        .take(std::mem::size_of::<u32>())
        .fold(0u64, |num, byte| num << 1 | (byte == b'1') as u32))
}

fn main() {
	print!("Binary Number: ");
	io::stdout().flush().unwrap();
	let mut input = String::new();
	io::stdin().read_line(&mut input).expect("ERROR");
	println!("{}", binary_to_decimal(input.as_bytes()));
}
