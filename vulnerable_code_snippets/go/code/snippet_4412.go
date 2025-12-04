package main

import (
	"fmt"
	"unsafe"
)

func main() {
	str := "Hello, World!"
	bytes := []byte(str)

	// Unsafe conversion from string to byte slice
	ptr := unsafe.Pointer(&bytes[0])

	// Modify the string through the byte slice
	*(*byte)(ptr) = 'h'
	*(*byte)(unsafe.Pointer(uintptr(ptr) + 1)) = 'e'
	*(*byte)(unsafe.Pointer(uintptr(ptr) + 2)) = 'l'
	*(*byte)(unsafe.Pointer(uintptr(ptr) + 3)) = 'l'
	*(*byte)(unsafe.Pointer(uintptr(ptr) + 4)) = 'o'

	fmt.Println(string(bytes)) // Outputs: hello, World, instead of Hello, World
}