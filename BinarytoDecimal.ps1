function BinarytoDecimal() {
	param($binaryNumber);
	$value = $binaryNumber;
	$len = $value.length;
	$output = 0;
	for ($position = 0; $position -lt $len; $position++) {
		$char = $value.substring($position, 1);
		if ( $char -eq "1" ) {
			$output += [Math]::Pow(2, $len-1-$position);
		} elseif ( $char -eq "0" ) {

		} else {
			write-output "Make sure you only input binary values";
			exit;
		}
	}
	return $output;
}

$input = read-host -p "Binary Number";
write-output $(BinarytoDecimal $input);