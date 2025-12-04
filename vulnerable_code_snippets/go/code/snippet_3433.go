package main

import (
	"fmt"
	"os"
	"unsafe"
)

type MyStruct struct {
	data [1024]byte
}

func main() {
	var myVar MyStruct

	for i := 0; i < 1025; i++ {
		myVar.data[i] = 'A'
	}

	fmt.Println(string(myVar.data[:]))
}