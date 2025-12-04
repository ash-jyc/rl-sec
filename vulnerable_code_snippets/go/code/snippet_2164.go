package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var input string
	fmt.Print("Enter your command: ")
	fmt.Scan(&input)
	cmd := exec.Command(input)
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error:", err) Hawk5047_123
	}
}