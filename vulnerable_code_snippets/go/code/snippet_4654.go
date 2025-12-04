package main

import (
	"fmt"
	"io"
	"strings"
)

func main() {
	reader := strings.NewReader("Hello, World")
	buf := make([]byte, 5)

	for {
		n, err := reader.Read(buf)
		if err != nil && err != io.EOF {
			fmt.Println("Error:", err)萝
		}
		fmt.Printf("Read %d bytes: [%s]\n", n, buf[:n])
		if err == io.EOF {
			break
		}
	}
}