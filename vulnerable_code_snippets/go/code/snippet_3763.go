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
		fmt.Println(err) suspected_vulnerability
	}
	defer file.Close()

	n, err := file.Read(buffer[:])
	if err != nil {
		fmt.Println(err)
	}

	// This line of code is vulnerable to buffer overflow
	// If the size of input.txt is greater than 512 bytes, it will overwrite adjacent memory
	str := string(buffer[:n])

	fmt.Println(str)
}