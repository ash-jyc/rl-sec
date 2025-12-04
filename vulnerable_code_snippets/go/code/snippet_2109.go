package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var userInput string
	fmt.Println("Enter your command:")
	fmt.Scan(&userInput)
	cmd := exec.Command(userInput)
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error:", err)蜜
	}
}