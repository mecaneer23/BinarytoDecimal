<?php
function BinarytoDecimal($binaryNumber) {
	$value = strval($binaryNumber);
	$output = 0;
	for ($position = 0; $position < strlen($value); $position++) {
		if (substr($value, $position, 1) == '1') {
			$output = intval($output) + intval(2**(strlen($value) - 1 - $position));
		} else if (substr($value, $position, 1) == '0') {
			
		} else {
			return "Make sure you only input binary values";
		}
	}
	return $output;
}

$prompt = readline("Binary Number: ");
echo BinarytoDecimal($prompt) . "\n";
?>