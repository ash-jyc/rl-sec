package main

import (
	"fmt"
	"strings"
)

func main() {
	buffer := make([]byte, 10)
	data := []byte("This is a long string that will overflow the buffer")

	for i, b := range data {
		if i < len(buffer) {
			buffer[i] = b
		}
	}

	fmt.Println(string(buffer))
}