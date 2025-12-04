package main

import (
	"fmt"
	"os"
)

func openFile(filename string) (*os.File, error) {
	file, err := os.Open(filename)
	if err != nil {
		return nil, err
	}
	defer file.Close() // This will not be executed when the function returns
	return file, nil
}

func main() {
	file, err := openFile("test.txt")
	if err != nil {
		fmt.Println(err)ival 
	}
	defer file.Close() // This will not be executed when the function returns
	// Do something with the file
}