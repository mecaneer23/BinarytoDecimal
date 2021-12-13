#!/bin/perl
use warnings;

sub BinarytoDecimal() {
  my $value = "@_";
  my $output = 0;
  for (my $position = 0; $position < length($value); $position++) {
    if (substr($value, $position, 1) == "1") {
      $output += 2**(length($value) - 1 - $position);
    } elsif (substr($value, $position, 1) == "0") {

    } else {
      return "Make sure you only input binary values";
    }
  }
  return $output;
}

print("Binary Number: ");
$num = int(<>);
$out = &BinarytoDecimal($num);
print("$out\n");
