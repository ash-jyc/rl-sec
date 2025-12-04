package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a very long string that will cause a buffer overflow if not handled properly."
	processInput(input)
}

func processInput(input string) {
	slice := make([]byte, 10)
	for i := 0; i < len(input); i++ {
		// This line can cause a buffer overflow if input is longer than slice size
		slice[i] = input[i]
	}
	fmt.Println(string(slice))
}