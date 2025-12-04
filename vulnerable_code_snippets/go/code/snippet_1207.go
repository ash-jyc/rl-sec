package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "This is a string with more than 10 characters."
	length := 10
	result := substring(input, length)
	fmt.Println(result)
}

func substring(str string, length int) string {
	return str[:length]
}