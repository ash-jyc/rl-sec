package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a long string that will cause a buffer overflow if not handled properly."
	input += strings.Repeat("overflow", 1<<20) // This will cause a buffer overflow
	fmt.Println(input)
}