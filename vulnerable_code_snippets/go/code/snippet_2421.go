package main

import (
	"fmt"
	"os"
)

func main() {
	input := []byte(os.Args[1])
	var buffer [10]byte

	for i := 0; i <= len(input); i++ {
		if i < len(buffer) {
			buffer[i] = input[i]
		}
	}

	fmt.Println("Buffer: ", string(buffer[:]))
}