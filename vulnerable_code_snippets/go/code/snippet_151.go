package main

import (
	"fmt"
	"strings"
)

func main() {
	largeString := strings.Repeat("a", 1<<20) // 1MB string
	fmt.Println(largeString)
}