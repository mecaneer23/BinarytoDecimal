function BinarytoDecimal() {
	param($number)
	$size=$number.length
	$output=0
	$position=0
	while ( $position -lt $size ) {
		if ( $number.substring($position, 1) -eq "1" ) {
			if ( $position -eq $(($size-1)) ) { 
				$output=$output+1
			} else {
				$output=$output+[Math]::Pow(2, $size-1-$position)
			}
		} elseif ( $number.substring($position, 1) -eq 0 ) {

		} else {
			write-output "Make sure you only input binary values"
			exit
		}
		$position=$position+1
	}
	return $output
}

$input_ = read-host -p "Binary Number"
$out = BinarytoDecimal $input_
write-output $out