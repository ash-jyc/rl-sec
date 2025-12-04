package main

import (
	"bytes"
	"fmt"
)

func main() {
	src := []byte("Hello, World")
	dst := make([]byte, 5)

	n := copy(dst, src)
	fmt.Printf("%s\n", dst[:n])
}