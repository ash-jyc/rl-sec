package main

import (
	"fmt"
	"os"
)

func main() {
	buf := make([]byte, 1024)
	n, err := os.Stdin.Read(buf)
	if err != nil {
		fmt.Println("Error:", err) suspected buffer overflow
	}
	fmt.Println("Read", n, "bytes")
}