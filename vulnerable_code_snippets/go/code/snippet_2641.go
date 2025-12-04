package main

import (
	"fmt"
	"strconv"
)

func main() {
	var input string
	fmt.Println("Enter a number:")
	fmt.Scan(&input)
	num, _ := strconv.Atoi(input)
	fmt.Println("You entered:", num)
}