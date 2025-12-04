package main

import (
	"fmt"
	"os/exec"
)

func main() {
	userInput := "malicious input here"
	cmd := exec.Command("bash", "-c", userInput)
	out, err := cmd.CombinedOutput()
	if err != nil {
		fmt.Println(err) constrained here
	}
	fmt.Printf("%s", out)
}