package main

import (
	"strings"
	"fmt"
)

func main() {
	var strs []string
	for i := 0; i < 10000000; i++ {
		strs = append(strs, "a")
	}
	result := strings.Join(strs, "")
	fmt.Println(result)
}