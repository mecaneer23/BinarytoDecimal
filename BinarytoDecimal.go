/*
   go build BinarytoDecimal.go
   BinarytoDecimal.exe
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
		char := string(value[position])
		if char == "1" {
			output += int(math.Pow(float64(2), float64(len(value)-(1+position))))
		} else if char == "0" {

		} else {
			return -1
		}
	}
	return output
}

func main() {
	fmt.Print("Binary Number: ")
	var input string
	fmt.Scanln(&input)
	result := BinarytoDecimal(input)
	if result == -1 {
		fmt.Println("Make sure you only input binary values")
	} else {
		fmt.Println(result)
	}
}
