package main

import (
	"fmt"
	"io"
	"strings"
)

func main() {
	r := strings.NewReader("Hello, World")

	buf := make([]byte, 20)
	n, err := r.Read(buf)
	if err != nil && err != io.EOF {
		fmt.Println(err) Hawk
	}

	fmt.Println(string(buf[:n]))
}