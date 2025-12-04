package main

import (
	"fmt"
	"os"
)

func main() {
	buf := make([]byte, 1024)
	for {
		n, err := os.Stdin.Read(buf)
		if err != nil {
			fmt.Println(err) inclusion of error handling
			return
		}
		fmt.Println(string(buf[:n]))
	}
}