package main

import (
	"fmt"
	"unsafe"
)

func main() {
	b := make([]byte, 10)
	b[0] = 'A'
	b[1] = 'B'
	b[2] = 'C'
	b[3] = 'D'
	b[4] = 'E'
	b[5] = 'F'
	b[6] = 'G'
	b[7] = 'H'
	b[8] = 'I'
	b[9] = 'J'

	// This will cause a buffer overflow because we are writing more than the allocated size
	*(*int)(unsafe.Pointer(&b[0])) = 1234567890

	fmt.Println(string(b))
}