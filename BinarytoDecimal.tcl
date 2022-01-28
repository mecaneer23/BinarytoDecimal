#!/usr/bin/tclsh
proc BinarytoDecimal {binaryNumber} {
    set value $binaryNumber
    set len [string length $value]
    set output 0
    for {set position 0}  {$position < $len} {incr position} {
        set char [string index $value $position]
        if {$char == "1"} {
            set output [expr $output + [expr 2 ** [expr $len - $position - 1]]]
        } elseif {$char == "0"} {
            continue
        } else {
            return "Make sure you only input binary values"
        }
    }
    return $output
}


puts -nonewline "Binary Number: "
flush stdout
gets stdin num
puts [BinarytoDecimal $num]
