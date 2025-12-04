package main

import (
	"fmt"
	"os"
)

func main() {
	input := os.Args[1:]
	if len(input) == 0 {
		fmt.Println("No input provided")
		return
	}

	var buffer [10]byte
	for i := 0; i < len(input[0]); i++ {
		if i < 10 {
			buffer[i] = input[0][i]
		}
	}

	fmt.Println("Buffer content: ", string(buffer[:]))
}