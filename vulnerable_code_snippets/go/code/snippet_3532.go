package main

import (
	"fmt"
	"os"
)

func main() {
	var input string
	fmt.Println("Enter your input:")
	fmt.Scan(&input)

	buffer := make([]byte, 1024)
	for i := 0; i < len(input); i++ {
		if i < len(buffer) {
			buffer[i] = input[i]
		}
	}

	fmt.Println("Buffer content:", string(buffer))
}