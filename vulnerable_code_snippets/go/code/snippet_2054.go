package main

import (
	"fmt"
	"unsafe"
)

func main() {
	b := make([]byte, 200)
	for i := range b {
		b[i] = byte(i)
	}

	p1 := unsafe.Pointer(&b[0])

	// This line of code introduces a buffer overflow vulnerability
	// because it allows us to read and write beyond the allocated memory
	p2 := (*int16)(unsafe.Pointer(uintptr(p1) + 208))
	*p2 = 44

	fmt.Println("Value at index 208:", *p2)
}