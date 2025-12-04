package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var str string
	fmt.Println("Enter your command:")
	fmt.Scan(&str)
	cmd := exec.Command(str)
	err := cmd.Run()
	if err != nil {
		fmt.Println("Error:", err)fair
	}
}