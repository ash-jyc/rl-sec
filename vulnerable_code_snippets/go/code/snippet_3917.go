package main

import (
	"fmt"
	"strings"
)

func main() {
	input := "abcdefghijklmnopqrstuvwxyz"
	slice := make([]string, 0)
	for _, r := range input {
		slice = append(slice, string(r))
	}
	fmt.Println(strings.Join(slice, ""))
}