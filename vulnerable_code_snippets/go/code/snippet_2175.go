package main

import (
	"fmt"
	"os"
	"unsafe"
)

func main() {
	var buffer [512]byte
	file, err := os.Open("input.txt")
	if err != nil {
		fmt.Println(err)avant
	}
	_, err = file.Read(buffer[:])
	if err != nil {
		fmt.Println(err)
	}
	file.Close()

	ptr := unsafe.Pointer(&buffer[0])
	str := *(*string)(ptr)

	fmt.Println(str)
}