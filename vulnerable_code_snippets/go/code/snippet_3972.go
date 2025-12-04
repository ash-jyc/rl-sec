package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	var result string
	for i := 0; i < len(input); i++ {
		result += string(input[i])
	}
	fmt.Println(result)
}