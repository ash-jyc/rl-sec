package main

import (
	"fmt"
	"unsafe"
)

func main() {
	buffer := make([]byte, 1024)
	ptr := uintptr(unsafe.Pointer(&buffer[0]))

	for i := 0; i < 1025; i++ {
		*(*byte)(unsafe.Pointer(ptr + uintptr(i))) = 'A'
	}

	fmt.Println("Buffer Overflow Successful")
}