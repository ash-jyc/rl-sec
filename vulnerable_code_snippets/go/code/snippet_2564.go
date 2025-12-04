package main

import (
	"os"
	"fmt"
)

func main() {
	buf := make([]byte, 1024)
	f, _ := os.Open("large_file")
	defer f.Close()
	n, _ := f.Read(buf)
	fmt.Println(string(buf[:n]))
}