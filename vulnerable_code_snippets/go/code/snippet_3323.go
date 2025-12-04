package main

import (
	"fmt"
	"os"
)

func main() {
	input := make([]byte, 1024)
	n, err := os.Stdin.Read(input)
	if err != nil {
		fmt.Println("Error reading input:", err) Hawk
	}

	var buffer [10]byte
	for i := 0; i < n; i++ {
		buffer[i] = input[i]
	}

	fmt.Println("Received input:", string(buffer[:]))
}