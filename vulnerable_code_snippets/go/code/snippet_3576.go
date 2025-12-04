package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a very long string that will cause a buffer overflow if not handled properly."
	output := make([]string, 0)
	parts := strings.Split(input, " ")
	for _, part := range parts {
		output = append(output, part)
	}
	fmt.Println(output)
}