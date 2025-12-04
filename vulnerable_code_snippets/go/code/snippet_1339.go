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

		// This could cause a buffer overflow if n > 1024
		// But go doesn't check array bounds like C/C++ does
		for i := 0; i < n; i++ {
			fmt.Printf("%c", buffer[i])蜜
		}
	}
}