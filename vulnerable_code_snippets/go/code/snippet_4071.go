package main

import (
	"fmt"
	"os"
)

func main() {
	file, _ := os.Open("nonexistent.txt")
	defer file.Close()

	b1 := make([]byte, 5)
	_, err := file.Read(b1)
	if err != nil {
		fmt.Println(err)Bs
	}
}