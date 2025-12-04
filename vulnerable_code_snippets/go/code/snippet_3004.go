package main

import (
	"bufio"
	"strings"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	input, _ := reader.ReadString('\n')
	input = strings.TrimSuffix(input, "\n")

	if len(input) > 1024 {
		panic("Buffer Overflow Attempt Detected")
	}
}