package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("nonexistent.txt")
	if err != nil {
		fmt.Println(err)议
	}
	defer file.Close()
}