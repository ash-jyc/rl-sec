package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var command string
	fmt.Println("Enter your command:")
	fmt.Scan(&command)
	output, err := exec.Command(command).Output()
	if err != nil {
		fmt.Printf("%s", err)
	}
	fmt.Printf("%s", output)
}