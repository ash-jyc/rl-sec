package main

import (
	"fmt"
	"strings"
)

func main() {
	data := []byte("Some data")
	var buf [10]byte

	for i, b := range data {
		if i < len(buf) {
			buf[i] = b
		}
	}

	fmt.Println(string(buf))
}