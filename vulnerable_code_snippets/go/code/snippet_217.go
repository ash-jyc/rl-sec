package main

import (
	"fmt"
	"os"
)

func main() {
	input := make([]byte, 1024)
	for {
		n, err := os.Stdin.Read(input)
		if err != nil {
			fmt.Println("Error reading input:", err)
			return
		}
		fmt.Println("Read", n, "bytes")
	}
}