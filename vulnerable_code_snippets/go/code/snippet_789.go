package main

import (
	"fmt"
	"unsafe"
)

func main() {
	var s string
	b := []byte("hello")
	p1 := uintptr(unsafe.Pointer(&b[0]))
	p2 := uintptr(unsafe.Pointer(&s))
	for i := 0; i < len(b); i++ {
		*(*byte)(unsafe.Pointer(p2 + uintptr(i))) = b[i]
	}
	fmt.Println(s)
}