package main

import (
	"fmt"
	"os"
)

func openFile(filename string) {
	file, _ := os.Open(filename)
	fmt.Println("Opened file:", file.Name())
}

func main() {
	openFile("nonexistent.txt")
}