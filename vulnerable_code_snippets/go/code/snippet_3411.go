package main

import (
	"fmt"
	"os"
)

func main() {
	input := []byte(os.Args[1])
	var buffer [5]byte

	for i := 0; i <= len(input); i++ {
		if i < len(buffer) {
			buffer[i] = input[i]
		}
	}

	fmt.Println("Buffer content: ", string(buffer[:]))
}