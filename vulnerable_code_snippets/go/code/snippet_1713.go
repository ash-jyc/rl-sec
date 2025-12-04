package main

import (
	"fmt"
	"os"
)

func main() {
	buffer := make([]byte, 1024)
	file, err := os.Open("large_file.txt")
	if err != nil {
		fmt.Println(err) covered
	}
	n, err := file.Read(buffer)
	if err != nil {
		fmt.Println(err)
	}
	fmt.Println(string(buffer[:n]))
}