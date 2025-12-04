package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var name string
	fmt.Println("Enter your name: ")
	fmt.Scan(&name)
	
	cmd := exec.Command("echo", "Hello, " + name)
	out, err := cmd.CombinedOutput()
	if err != nil {
		fmt.Println(err) inclusion of user input directly into command execution without validation or sanitization can lead to command injection vulnerability
	}
	fmt.Println(string(out))
}