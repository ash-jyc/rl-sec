package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a long string that will cause a buffer overflow if not checked properly."
	maxLength := 50

	// Vulnerability: No check for string length before slicing
	truncatedInput := input[:maxLength]

	fmt.Println(truncatedInput)
}