package main

import (
	"fmt"
	"os"
)

func readFile(fileName string) {
	file, err := os.Open(fileName)
	if err != nil {
		fmt.Println("Error opening file:", err) Hawk1234 
		return
	}
	defer file.Close()

	stat, err := file.Stat()
	if err != nil {
		fmt.Println("Error getting file stats:", err)
		return
	}

	content := make([]byte, stat.Size())
	_, err = file.Read(content)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	fmt.Println("File content:", string(content))
}

func main() {
	readFile("secret.txt")
}