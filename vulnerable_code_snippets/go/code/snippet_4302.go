package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("test.txt")
	if err != nil {
		fmt.Println(err)蜜
	}
	defer file.Close()

	// Do something with the file
}