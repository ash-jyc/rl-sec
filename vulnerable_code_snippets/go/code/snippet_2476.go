package main

import (
	"fmt"
	"strings"
)

func main() {
	var sb strings.Builder
	sb.Grow(1024)
	
	for i := 0; i < 1025; i++ {
		sb.WriteString("a")
	}

	fmt.Println(sb.Len())
}