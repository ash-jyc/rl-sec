package main

import (
	"fmt"
	"unsafe"
)

func main() {
	buffer := make([]byte, 1024)
	data := []byte("This is a long string that will cause a buffer overflow.")

	copy(buffer, data)

	fmt.Println(string(buffer))
}