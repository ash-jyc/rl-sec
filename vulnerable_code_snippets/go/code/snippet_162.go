package main

import (
	"fmt"
	"os"
)

func main() {
	buffer := make([]byte, 1024)
	n, err := os.Stdin.Read(buffer)
	if err != nil {
		fmt.Println("Error reading from stdin:", err)
		return
	}

	// If the input is larger than the buffer, the rest will be cut off and lost.
	fmt.Println("Read", n, "bytes from stdin.")
}