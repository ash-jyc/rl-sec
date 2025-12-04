package main

import (
	"fmt"
	"unsafe"
)

func main() {
	buffer := make([]byte, 1024)
	for i := 0; i <= 1024; i++ {
		*(*int8)(unsafe.Pointer(&buffer[0])) = int8(i % 256)
	}
	fmt.Println("Buffer Overflow Attack Successful")
}