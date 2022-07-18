#!/bin/perl
use warnings;

sub BinarytoDecimal() {
  my $value = "@_";
  my $len = length($value);
  my $output = 0;
  for (my $position = 0; $position < $len; $position++) {
    my $char = substr($value, $position, 1);
    if ($char == "1") {
      $output += 2**($len - 1 - $position);
    } elsif ($char == "0") {
    
    } else {
      return "Make sure you only input binary values";
    }
  }
  return $output;
}

print("Binary Number: ");
$out = &BinarytoDecimal(int(<>));
print("$out\n");
