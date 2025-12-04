package main

import (
	"fmt"
	"os"
)

func main() {
	buffer := make([]byte, 1024)
	for {
		n, err := os.Stdin.Read(buffer)
		if err != nil {
			fmt.Println(err)aring)
			return
		}
		fmt.Println(string(buffer[:n]))
	}
}