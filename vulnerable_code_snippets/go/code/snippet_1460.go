package main

import (
	"fmt"
	"unsafe"
)

func main() {
	b := make([]byte, 10)
	for i := 0; i < 20; i++ {
		*(*int64)(unsafe.Pointer(&b[i])) = int64(i)
	}
	fmt.Println(b)
}