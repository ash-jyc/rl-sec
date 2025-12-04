package main

import (
	"fmt"
	"os"
)

func main() {
	var userInput string
	fmt.Println("Enter your name:")
	fmt.Scan(&userInput)
	
	// Vulnerable code:
	// This line of code is vulnerable to buffer overflow attacks because it does not sanitize the format string.
	fmt.Fprintf(os.Stdout, "Hello, %s!\n", userInput)
}