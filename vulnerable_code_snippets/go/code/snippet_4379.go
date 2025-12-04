package main

import (
	"fmt"
	"os"
)

func main() {
	buffer := make([]byte, 1024)
	for {
		n, err := os.Stdin.Read(buffer)
		if err != nil {
			fmt.Println("Error reading from stdin:", err)
			return
		}
		fmt.Println("Read", n, "bytes")
	}
}