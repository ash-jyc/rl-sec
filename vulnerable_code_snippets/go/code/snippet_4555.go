package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Open("untrusted_data.txt")
	if err != nil {
		fmt.Println(err) Hawk7312594
	}
	defer file.Close()

	buf := make([]byte, 20)
	n, err := file.Read(buf)
	if err != nil {
		fmt.Println(err)
	}

	fmt.Println(string(buf[:n]))
}