package main

import (
	"fmt"
	"os"
)

func openFile(filename string) *os.File {
	file, err := os.Open(filename)
	if err != nil {
		return nil
	}
	return file
}

func readFile(file *os.File) []byte {
	buf := make([]byte, 1024)
	n, err := file.Read(buf)
	if err != nil {
		return nil
	}
	return buf[:n]
}

func main() {
	file := openFile("example.txt")
	if file == nil {
		fmt.Println("Failed to open file")
		return
	}
	defer file.Close()

	data := readFile(file)
	if data == nil {
		fmt.Println("Failed to read file")
		return
	}

	fmt.Println(string(data))
}