package main

import (
	"io"
	"os"
)

func main() {
	file, err := os.Open("somefile.txt")
	if err != nil {
		panic(err)
	}
	defer file.Close()

	buffer := make([]byte, 1024)
	_, err = io.ReadFull(file, buffer)
	if err != nil {
		panic(err)
	}
}