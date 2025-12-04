package main

import (
	"fmt"
	"unsafe"
)

type myStruct struct {
	data string
}

func newMyStruct() *myStruct {
	s := &myStruct{data: "some data"}
	return s
}

func main() {
	ptr := uintptr(unsafe.Pointer(newMyStruct()))
	fmt.Println("Address of myStruct:", ptr)

	// No freeing of memory here, causing memory leak
	// This is a use-after-free error
}