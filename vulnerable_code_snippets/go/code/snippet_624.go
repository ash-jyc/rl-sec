package main

import (
	"os/exec"
	"fmt"
)

func main() {
	userInput := "untrusted user input; it can be anything"
	cmd := exec.Command(userInput)
	out, err := cmd.CombinedOutput()
	if err != nil {
		fmt.Println(fmt.Sprint(err) + ": " + string(out))
	}
	fmt.Println(string(out))
}