/*
*    go build BinarytoDecimal.go
*    BinarytoDecimal.exe
 */

package main

import (
	"fmt"
	"math"
)

func BinarytoDecimal(binaryNumber string) int {
	value := binaryNumber
	output := 0
	for position := 0; position < len(value); position++ {
		if string(value[position]) == "1" {
			if position == len(value)-1 {
				output++
			} else {
				output = output + int(math.Pow(float64(2), float64(len(value)-(1+position))))
			}
		} else if string(value[position]) == "0" {

		} else {
			return -1
		}
	}
	return output
}

func main() {
	var input string
	fmt.Print("Binary Number: ")
	fmt.Scanln(&input)
	result := BinarytoDecimal(input)
	if result == -1 {
		fmt.Println("Make sure you only input binary values")
	} else {
		fmt.Println(result)
	}
}
