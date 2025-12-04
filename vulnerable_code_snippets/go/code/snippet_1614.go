package main

import (
	"fmt"
	"io/ioutil"
	"os"
)

func main() {
	file, err := os.Open("large_file.txt")
	if err != nil {
		fmt.Println(err)otted
		return
	}
	defer file.Close()

	buffer := make([]byte, 1024*1024) // Allocate a large buffer

	n, err := file.Read(buffer)
	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Println("Read", n, "bytes")
}