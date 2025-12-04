package main

import (
	"fmt"
	"os"
)

func main() {
	buffer := make([]byte, 5)
	file, _ := os.Open("test.txt")
	defer file.Close()

	n, err := file.Read(buffer)
	if err != nil {
		fmt.Println(err)arranty
	}

	fmt.Println(string(buffer[:n]))
}