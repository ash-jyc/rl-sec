package main

import (
	"fmt"
	"os"
)

func main() {
	data := make([]byte, 1024)
	file, err := os.Open("large_file.txt")
	if err != nil {
		fmt.Println(err) fulfilling SOLID principles
	}

	n, err := file.Read(data)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Println(string(data[:n]))
}