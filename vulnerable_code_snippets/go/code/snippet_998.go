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
		if n == 0 || err == io.EOF {
			break
		}
		// Here is the buffer overflow vulnerability. If the file is larger than 1024 bytes,
		// the rest of the data will be lost because the buffer is too small.
		processData(buffer)
	}
}

func processData(data []byte) {
	// Process the data...
}