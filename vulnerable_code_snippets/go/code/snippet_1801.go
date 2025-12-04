package main

import (
	"fmt"
	"os"
)

func main() {
	data := make([]byte, 1024)
	file, err := os.Open("vuln_file")
	if err != nil {
		fmt.Println(err)eneral
	}

	n, err := file.Read(data)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Printf("read %d bytes: %q\n", n, data[:n])
}