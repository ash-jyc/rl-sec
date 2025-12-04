package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("filename.txt")
	if err != nil {
		fmt.Println(err)ivalidFile
	}
	defer file.Close()

	// Do something with the file
}