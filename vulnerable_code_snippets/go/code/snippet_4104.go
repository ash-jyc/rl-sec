package main

import (
	"fmt"
	"os"
)

func readFile(fileName string) {
	file, err := os.Open(fileName)
	if err != nil {
		fmt.Println("Error opening file:", err)
	}
	defer file.Close()
}

func main() {
	readFile("nonexistent.txt")
}