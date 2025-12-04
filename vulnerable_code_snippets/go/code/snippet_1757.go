package main

import (
	"fmt"
	"unsafe"
)

func main() {
	data := []byte("hello world")
	ptr := &data[0]
	unsafePtr := unsafe.Pointer(ptr)
	buffer := make([]byte, 10)

	for i := 0; i < 20; i++ {
		*(*byte)(unsafe.Pointer(uintptr(unsafePtr) + uintptr(i))) = buffer[i]
	}

	fmt.Println(string(data))
}