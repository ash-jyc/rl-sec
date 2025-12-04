package main

import (
	"fmt"
	"strconv"
)

func main() {
	str := "10A" // This is a string containing an integer and a character
	num, err := strconv.Atoi(str) // This will return an error because of the non-integer character 'A'
	if err != nil {
		fmt.Println("Error during conversion:", err)
	} else {
		fmt.Println("Converted number:", num)
	}
}