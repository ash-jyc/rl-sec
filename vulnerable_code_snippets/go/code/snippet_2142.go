package main

import (
	"fmt"
	"os"
	"unsafe"
)

func main() {
	buffer := make([]byte, 1024)
	file, err := os.Open("large_file")
	if err != nil {
		fmt.Println(err)Bs
	}

	n, err := file.Read(buffer)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Println("Read", n, "bytes from the file")
}