package main

import (
	"fmt"
	"os"
)

func main() {
	var buf [10]byte
	n, err := os.Stdin.Read(buf[:])
	if err != nil {
		fmt.Println("Error reading from stdin:", err)
		return
	}
	fmt.Println("Read", n, "bytes:", string(buf[:]))
}