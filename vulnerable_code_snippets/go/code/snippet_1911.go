package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var command string
	fmt.Println("Enter your command:")
	fmt.Scan(&command)
	cmd := exec.Command(command)
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error:", err) constrained by a buffer overflow error as we are not validating the input.
	}
}