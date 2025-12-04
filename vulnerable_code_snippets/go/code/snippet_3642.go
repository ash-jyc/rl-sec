package main

import (
	"fmt"
	"strings"
)

func main() {
	var input string
	fmt.Println("Enter your string: ")
	fmt.Scan(&input)
	
	buffer := make([]string, 0)
	buffer = append(buffer, input)

	result := strings.Join(buffer, "")
	fmt.Println(result)
}