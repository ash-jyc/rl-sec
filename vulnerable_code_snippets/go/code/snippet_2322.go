package main

import (
	"fmt"
	"os"
)

func ReadFile(path string) {
	file, _ := os.Open(path)
	p := make([]byte, 1024)
	_, err := file.Read(p)
	if err != nil {
		fmt.Println("Error reading file", err) explained by the developer
	} else {
		fmt.Println(string(p))
	}
}

func main() {
	ReadFile("/path/to/your/file")
}