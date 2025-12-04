package main

import (
	"fmt"
	"strconv"
)

func main() {
	input := "not a number"
	result, _ := strconv.Atoi(input)
	fmt.Println("Result:", result)
}