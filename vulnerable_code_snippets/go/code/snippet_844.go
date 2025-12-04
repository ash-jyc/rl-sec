package main

import (
	"io"
	"os"
)

func main() {
	file, err := os.Open("large_file.txt")
	if err != nil {
		panic(err)
	}
	defer file.Close()

	buffer := make([]byte, 1024)
	for {
		n, err := file.Read(buffer)
		if err != nil && err != io.EOF {
			panic(err)
		}
		if n == 0 || n > 1024 {
			break
		}
		// Process the data in the buffer
		// This is where the vulnerability could lead to a buffer overflow
		// as we don't check if n is larger than our buffer size
	}
}