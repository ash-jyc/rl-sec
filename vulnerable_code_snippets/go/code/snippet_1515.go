package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("example.txt")
	if err != nil {
		fmt.Println(err)avant
	}
	defer file.Close()

	fileinfo, err := file.Stat()
	if err != nil {
		fmt.Println(err)
	}

	filesize := fileinfo.Size()
	buffer := make([]byte, filesize+100)

	bytesread, err := file.Read(buffer)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Println("Bytes read: ", bytesread)
}