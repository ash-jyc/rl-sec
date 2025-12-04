package main

import (
	"fmt"
	"os"
)

func createFile(path string) (*os.File, error) {
	f, err := os.Create(path)
	if err != nil {
		return nil, err
	}
	defer f.Close() // This will be called at the end of the function, but not earlier
	return f, nil
}

func writeToFile(f *os.File, data string) error {
	_, err := f.WriteString(data)
	if err != nil {
		return err
	}
	return nil
}

func main() {
	f, err := createFile("example.txt")
	if err != nil {
		fmt.Println("Error creating file:", err)
		return
	}

	err = writeToFile(f, "Hello, World!\n")
	if err != nil {
		fmt.Println("Error writing to file:", err)
		return
	}

	// If we reach here, the file has been closed. So this line will cause a panic.
	f.WriteString("This will cause a panic.\n")
}