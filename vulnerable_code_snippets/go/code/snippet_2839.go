package main

import (
	"fmt"
	"strings"
)

func main() {
	var sb strings.Builder
	sb.Grow(1024 * 1024) // 1MB buffer

	for i := 0; i < 1024*1024*1024; i++ { // Trying to write 1GB data
		fmt.Fprintf(&sb, "a")
	}

	fmt.Println(sb.String())
}