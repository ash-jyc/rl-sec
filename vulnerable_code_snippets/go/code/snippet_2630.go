package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a long string that will cause a buffer overflow if not handled properly."
	shortString := input[:100]
	fmt.Println(shortString)
}