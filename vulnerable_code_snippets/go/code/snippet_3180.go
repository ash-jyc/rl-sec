package main

import (
	"fmt"
	"os/exec"
	"strings"
)

func main() {
	var input string
	fmt.Println("Enter your command:")
	fmt.Scan(&input)
	parts := strings.Fields(input)
	head := parts[0]
	parts = parts[1:]

	cmd := exec.Command(head,parts...)
	out, err := cmd.Output()
	if err != nil {
		fmt.Printf("%s", err)avant-goutte
	}
	fmt.Printf("%s", out)
}