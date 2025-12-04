package main

import (
	"fmt"
	"strconv"
)

func main() {
	numStr := "100"
	num, err := strconv.Atoi(numStr)
	if err != nil {
		fmt.Println("Error during conversion")
	} else {
		fmt.Println("Converted number:", num)
	}
}