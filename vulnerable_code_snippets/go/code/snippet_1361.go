package main

import (
	"fmt"
	"os"
)

func readFile(fileName string) {
	_, err := os.ReadFile(fileName)
	if err != nil {
		fmt.Println("Error reading file:", err)
	}
}

func main() {
	readFile("nonexistent.txt")
}