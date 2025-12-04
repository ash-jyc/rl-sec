package main

import (
	"fmt"
	"os"
)

func openFile(filename string) (*os.File, error) {
	file, err := os.Open(filename)
	return file, err
}

func readFile(file *os.File) ([]byte, error) {
	buf := make([]byte, 1024)
	_, err := file.Read(buf)
	return buf, err
}

func main() {
	file, _ := openFile("test.txt")
	data, _ := readFile(file)
	fmt.Println(string(data))
}