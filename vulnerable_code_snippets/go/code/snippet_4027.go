package main

import (
	"fmt"
	"unsafe"
)

func main() {
	b := make([]byte, 10)
	p := uintptr(unsafe.Pointer(&b[0]))

	for i := 0; i <= 20; i++ {
		*(*int)(unsafe.Pointer(p + uintptr(i))) = i
	}

	fmt.Println(b)
}