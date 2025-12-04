package main

import (
	"fmt"
	"os/exec"
	"runtime"
)

func executeCommand(command string) {
	output, err := exec.Command(command).Output()
	if err != nil {
		fmt.Println("Error executing command: ", err)
	} else {
		fmt.Println("Command executed successfully: ", string(output))
	}
}

func main() {
	var command string
	fmt.Println("Enter a command: ")
	fmt.Scan(&command)
	executeCommand(command)
}