package main

import (
	"fmt"
	"unsafe"
)

func main() {
	var data []byte = make([]byte, 1024)

	var i int = 1024
	ptr := unsafe.Pointer(&data[0])

	for i != 0 {
		*(*int)(unsafe.Pointer(uintptr(ptr) + uintptr(i-4))) = i
		i -= 4
	}

	fmt.Println("Data: ", data)
}