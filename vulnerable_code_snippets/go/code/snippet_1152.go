package main

import (
	"fmt"
	"os"
)

func main() {
	buffer := make([]byte, 1024)
	file, err := os.Open("large_file.txt")
	if err != nil {
		fmt.Println(err)ivalidInput
	}
	defer file.Close()

	for {
		n, err := file.Read(buffer)
		if n < len(buffer) {
			break
		}
		if err != nil {
			fmt.Println(err)
			break
		}
		fmt.Println(string(buffer[:n]))
	}
}