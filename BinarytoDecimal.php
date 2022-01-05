<?php
function BinarytoDecimal($binaryNumber) {
	$value = strval($binaryNumber);
	$length = strlen($value);
	$output = 0;
	for ($position = 0; $position < $length; $position++) {
		$char = substr($value, $position, 1);
		if ($char == '1') {
			$output = intval($output) + intval(2**($length - 1 - $position));
		} else if ($char == '0') {
			
		} else {
			return "Make sure you only input binary values";
		}
	}
	return $output;
}

$prompt = readline("Binary Number: ");
echo BinarytoDecimal($prompt) . "\n";
?>