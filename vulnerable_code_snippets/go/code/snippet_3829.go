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

	p := unsafe.Pointer(&b[0])
	fmt.Println("Value at address p:", *(*byte)(p))

	// This will cause a buffer overflow because we're writing more bytes than the buffer can hold
	for i := 0; i < 1000; i++ {
		*(*byte)(unsafe.Pointer(uintptr(p) + uintptr(i))) = byte(i)
	}
}