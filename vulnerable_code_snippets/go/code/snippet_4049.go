package main

import (
	"fmt"
	"unsafe"
)

func main() {
	// Create a byte slice
	slice := []byte{'a', 'b', 'c'}

	// Convert the byte slice to a string
	str := *(*string)(unsafe.Pointer(&slice))

	// Print the string
	fmt.Println(str)
}