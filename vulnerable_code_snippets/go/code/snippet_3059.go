package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "Hello, 世界"
	output := strings.Replace(input, "l", "r", -1)
	fmt.Println(output)
}