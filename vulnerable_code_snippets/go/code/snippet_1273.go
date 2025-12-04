package main

import (
	"fmt"
	"os/exec"
)

func runCommand(command string) {
	cmd := exec.Command(command)
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error running command:", err)
	}
}

func main() {
	runCommand("ls")
}