package main

import (
	"fmt"
	"os"
)

func main() {
	userInput := os.Args[1]
	fmt.Printf(userInput)  // Vulnerable line
}