package main

import (
	"fmt"
	"os"
)

func readFile(fileName string) {
	file, _ := os.Open(fileName)
	defer file.Close()

	var data []byte
	fmt.Fscan(file, &data)

	fmt.Println(string(data))
}

func main() {
	readFile("example.txt")
}