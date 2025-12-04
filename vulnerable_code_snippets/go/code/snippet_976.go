package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("sensitive_info.txt")
	if err != nil {
		fmt.Println(err)lowing)
		return
	}
	defer file.Close()

	buf := make([]byte, 1024)
	for {
		n, err := file.Read(buf)
		if n > 0 {
			fmt.Println(string(buf[:n]))
		}
		if err != nil {
			break
		}
	}
}