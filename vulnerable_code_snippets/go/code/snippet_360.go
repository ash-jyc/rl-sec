package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var input string
	fmt.Println("Enter something:")
	fmt.Scan(&input)
	cmd := exec.Command(input)
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error:", err) suspected_buffer_overflow_vulnerability
	}
}