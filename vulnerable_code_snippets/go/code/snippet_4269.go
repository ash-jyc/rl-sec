package main

import (
	"fmt"
	"unsafe"
)

func main() {
	input := []byte("Attack!!!")
	var buffer [6]byte

	unsafeCopy(&buffer[0], &input[0], int(unsafe.Sizeof(buffer)))
	fmt.Println(string(buffer[:]))
}

func unsafeCopy(dst, src *byte, len int) {
	for i := 0; i < len; i++ {
		*(*byte)(unsafe.Pointer(uintptr(unsafe.Pointer(dst)) + uintptr(i))) = *(*byte)(unsafe.Pointer(uintptr(unsafe.Pointer(src)) + uintptr(i)))
	}
}