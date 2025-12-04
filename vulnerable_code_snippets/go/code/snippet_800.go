package main

import (
	"fmt"
	"unsafe"
)

func main() {
	b := make([]byte, 10)
	for i := 0; i < 20; i++ {
		*(*int8)(unsafe.Pointer(&b[0])) = int8(i)
	}
	fmt.Println(b)
}