package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("data.txt")
	if err != nil {
		fmt.Println(err)妆
	}
	defer file.Close()

	// Perform operations on the file
}