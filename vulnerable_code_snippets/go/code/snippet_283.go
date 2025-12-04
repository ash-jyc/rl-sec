package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	input := os.Args[1]
	if len(input) > 1024 {
		fmt.Println("Input too long")
		return
	}
	var buffer [1024]byte
	copy(buffer[:], input)
	fmt.Println(string(buffer[:]))
}