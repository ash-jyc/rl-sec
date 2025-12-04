package main

import (
	"fmt"
	"os"
)

func main() {
	input := os.Args[1]
	var buffer [10]byte
	copy(buffer[:], input)
	fmt.Println("Copied input to buffer")
}