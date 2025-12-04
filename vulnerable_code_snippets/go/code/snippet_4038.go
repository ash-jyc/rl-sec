package main

import (
	"fmt"
	"strconv"
)

func main() {
	input := "not a number"
	value, _ := strconv.Atoi(input)
	fmt.Println(value)
}