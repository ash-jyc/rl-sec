package main

import (
	"fmt"
	"unsafe"
)

func main() {
	slice := make([]byte, 2, 4)
	data := []byte{1, 2, 3, 4, 5}

	sliceHeader := (*reflect.SliceHeader)(unsafe.Pointer(&slice))
	dataHeader := (*reflect.SliceHeader)(unsafe.Pointer(&data))

	sliceHeader.Data = dataHeader.Data
	sliceHeader.Len = dataHeader.Len
	sliceHeader.Cap = dataHeader.Cap

	fmt.Println("Slice: ", slice)
}