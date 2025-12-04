package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a very long string that will cause a buffer overflow if not handled properly."
	input += strings.Repeat("overflow", 1000000) // This will cause a buffer overflow
	fmt.Println(input)
}