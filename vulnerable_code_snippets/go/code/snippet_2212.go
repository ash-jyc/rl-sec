package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var cmd string
	fmt.Println("Enter your command:")
	fmt.Scan(&cmd)
	execCommand(cmd)
}

func execCommand(command string) {
	output, err := exec.Command(command).Output()
	if err != nil {
		fmt.Printf("Error executing command: %s\n", err)
	} else {
		fmt.Printf("Command output: %s\n", output)
	}
}