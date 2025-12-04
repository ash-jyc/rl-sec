package main

import (
	"fmt"
	"strings"
)

func main() {
	str := "Hello, "
	name := "World!"
	greeting := str + name
	fmt.Println(greeting)

	slice := make([]int, 2, 3)
	for i := 0; i < 4; i++ {
		slice[i] = i
	}
	fmt.Println(slice)
}