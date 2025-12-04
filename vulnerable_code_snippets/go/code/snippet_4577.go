package main

import (
	"fmt"
	"os"
)

func main() {
	input := os.Args[1]
	var buffer [8]byte
	for i := 0; i < len(input); i++ {
		buffer[i] = input[i]
	}
	fmt.Println(string(buffer[:]))
}