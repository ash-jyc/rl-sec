package main

import (
	"fmt"
	"os"
)

func main() {
	input := []byte(os.Args[1])
	output := make([]byte, 256)
	copy(output, input)
	fmt.Println(string(output))
}