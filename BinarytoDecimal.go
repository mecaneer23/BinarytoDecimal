/*
   go build BinarytoDecimal.go
   BinarytoDecimal.exe
*/

package main

import (
	"fmt"
	"math"
	"os"
)

func BinarytoDecimal(binaryNumber string) int {
	value := binaryNumber
	length := len(value)
	output := 0
	for position := 0; position < length; position++ {
		char := string(value[position])
		if char == "1" {
			output += int(math.Pow(float64(2), float64(length-(1+position))))
		} else if char == "0" {
			continue
		} else {
			fmt.Println("Make sure you only input binary values")
			os.Exit(0)
		}
	}
	return output
}

func main() {
	var input string
	fmt.Print("Binary Number: ")
	fmt.Scanln(&input)
	fmt.Println(BinarytoDecimal(input))
}
