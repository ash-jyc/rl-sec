package main

import (
	"fmt"
	"os"
	"unsafe"
)

func main() {
	var buffer [10]int
	input := os.Args[1]
	for i := 0; i < len(input); i++ {
		buffer[i] = int(input[i])
	}
	fmt.Println(buffer)
}