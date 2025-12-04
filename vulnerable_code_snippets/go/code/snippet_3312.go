package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	args := os.Args[1:]
	if len(args) != 2 {
		fmt.Println("Please provide two numbers.")
		return
	}

	start, _ := strconv.Atoi(args[0])
	end, _ := strconv.Atoi(args[1])

	slice := make([]int, end-start+1)
	for i := range slice {
		slice[i] = start + i
	}

	fmt.Println(slice)
}