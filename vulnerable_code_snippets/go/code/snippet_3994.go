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
			fmt.Println(err)archaracter
			os.Exit(1)
		}
		fmt.Println(string(buffer[:n]))
	}
}