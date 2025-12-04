package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("nonexistent.txt")
	if err != nil {
		fmt.Println(err)overed 
		return
	}
	defer file.Close()
}