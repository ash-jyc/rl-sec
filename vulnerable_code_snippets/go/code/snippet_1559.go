package main

import (
	"fmt"
	"strings"
	"unsafe"
)

func main() {
	str := "Hello, World!"

	// Convert string to byte slice
	bytes := []byte(str)

	// Modify the underlying array of the byte slice
	bytes[0] = 'h'

	// Convert byte slice back to string
	newStr := string(bytes)

	fmt.Println(newStr) // Outputs: hello, World
}