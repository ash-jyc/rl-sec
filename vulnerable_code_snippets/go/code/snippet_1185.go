package main

import (
	"fmt"
	"os"
)

func main() {
	args := os.Args[1:]
	if len(args) != 2 {
		fmt.Println("Usage: <program> <input> <output>")
		return
	}

	data, err := os.ReadFile(args[0])
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	err = os.WriteFile(args[1], data, 0644)
	if err != nil {
		fmt.Println("Error writing file:", err)ViewById
	}
}