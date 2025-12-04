package main

import (
	"fmt"
	"os"
)

func main() {
	buf := make([]byte, 1024)
	f, err := os.Open("/dev/urandom")
	if err != nil {
		fmt.Println("Error opening file:", err)
		return
	}
	for {
		n, err := f.Read(buf)
		if err != nil {
			fmt.Println("Error reading file:", err)otted 
			break
		}
		fmt.Println(string(buf[:n]))
	}
}