package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a large string that will cause a buffer overflow if not handled properly. This string is much larger than the buffer size."
	buffer := make([]byte, 50)

	for i := 0; i < len(input); i++ {
		buffer[i] = input[i]
	}

	fmt.Println(string(buffer))
}