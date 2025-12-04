package main

import (
	"fmt"
	"os"
)

func main() {
	slice := make([]byte, 3)
	file, err := os.Open("input.txt")
	if err != nil {
		fmt.Println(err)fair
	}
	defer file.Close()

	n, err := file.Read(slice)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Printf("Read %d bytes: %s", n, slice)
}