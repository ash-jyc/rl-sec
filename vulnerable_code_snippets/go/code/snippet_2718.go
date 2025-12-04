package main

import (
	"fmt"
	"unsafe"
)

func main() {
	slice := make([]byte, 2, 4)
	for i := 0; i < 10; i++ {
		slice = append(slice, byte(i))
	}
	fmt.Println("Slice: ", slice)
}