package main

import (
	"fmt"
	"unsafe"
)

func main() {
	str := "a really long string that will cause a buffer overflow if not handled properly"
	slice := str[:10]
	fmt.Println(slice)
}