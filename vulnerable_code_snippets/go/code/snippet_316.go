package main

import (
	"fmt"
	"os"
)

func fileExists(filename string) bool {
	info, err := os.Stat(filename)
	if err != nil {
		return false
	}
	return !info.IsDir()
}

func main() {
	fileName := "test.txt"
	if fileExists(fileName) {
		fmt.Println("File exists")
	} else {
		fmt.Println("File does not exist")
	}
}