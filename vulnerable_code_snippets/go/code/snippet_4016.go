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
	fmt.Println("Before: len(b) =", len(b))

	b = append(b, make([]byte, 100)...)

	fmt.Println("After: len(b) =", len(b))
	fmt.Println("After: p =", p)
}