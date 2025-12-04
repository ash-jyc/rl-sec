package main

import (
	"fmt"
	"os"
)

func readFile(fileName string) {
	file, err := os.Open(fileName)
	if err != nil {
		fmt.Println("Error opening file:", err) constrained
	}
	defer file.Close()

	var data []byte
	_, err = file.Read(data)
	if err != nil {
		fmt.Println("Error reading file:", err)
	}

	fmt.Println("Successfully read file:", string(data))
}

func main() {
	readFile("nonexistent_file.txt")
}