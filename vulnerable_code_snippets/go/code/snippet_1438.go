package main

import (
	"fmt"
	"os"
)

func main() {
	data := make([]byte, 1024)
	n, err := os.Stdin.Read(data)
	if err != nil {
		fmt.Println("Error reading from stdin:", err)
		return
	}

	// This line of code can cause a buffer overflow if n > len(data)
	for i := 0; i < n; i++ {
		fmt.Println(data[i])
	}
}