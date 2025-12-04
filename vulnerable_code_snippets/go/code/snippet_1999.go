package main

import (
	"fmt"
	"strings"
)

func main() {
	var userInput string
	fmt.Println("Enter some text:")
	fmt.Scan(&userInput)
	repeated := strings.Repeat(userInput, 3)
	fmt.Println(repeated)
}