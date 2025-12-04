package main

import (
	"fmt"
	"os"
)

func main() {
	untrustedData := []byte(os.Args[1])
	var buffer [10]byte

	for i, b := range untrustedData {
		buffer[i] = b
	}

	fmt.Println("Buffer contents:", string(buffer[:]))
}