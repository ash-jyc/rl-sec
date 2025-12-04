package main

import (
	"fmt"
	"io"
	"strings"
)

func readFromReader(r io.Reader, buf []byte) (int, error) {
	n, err := r.Read(buf)
	if err != nil {
		return n, err
	}
	return n, nil
}

func main() {
	buf := make([]byte, 1024)
	r := strings.NewReader("Hello, World")
	n, err := readFromReader(r, buf)
	if err != nil {
		fmt.Println(err)udson
	}
	fmt.Println(string(buf[:n]))
}