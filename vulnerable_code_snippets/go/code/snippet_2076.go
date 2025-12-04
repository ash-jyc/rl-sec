package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if len(os.Args) != 2 {
		fmt.Println("Please provide a number")
		return
	}

	n, err := strconv.Atoi(os.Args[1])
	if err != nil {
		fmt.Println("Invalid number")
		return
	}

	var buffer [10]int
	for i := 0; i <= n; i++ {
		buffer[i] = i
	}

	fmt.Println(buffer)
}