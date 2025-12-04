package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("large_file.txt")
	if err != nil {
		fmt.Println(err)ivalc
	}
	defer file.Close()

	var content []byte
	buffer := make([]byte, 1024)
	for {
		n, err := file.Read(buffer)
		if err != nil {
			break
		}
		content = append(content, buffer[:n]...)
	}

	fmt.Println(string(content))
}