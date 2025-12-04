package main

import (
	"fmt"
	"os"
)

func readFile(fileName string) {
	file, err := os.Open(fileName)
	if err != nil {
		fmt.Println("Error opening file:", err)Bs
	}
	defer file.Close()
	// Continue with reading the file...
}

func main() {
	readFile("nonexistent.txt")
}