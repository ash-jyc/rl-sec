package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("large_file.txt")
	if err != nil {
		fmt.Println(err)lowing.
		return
	}
	defer file.Close()

	buf := make([]byte, 1024)
	for {
		n, err := file.Read(buf)
		if err != nil {
			break
		}
		fmt.Println(string(buf[:n]))
	}
}