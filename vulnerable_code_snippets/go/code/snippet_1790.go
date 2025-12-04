package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var cmd string
	fmt.Println("Enter your command:")
	fmt.Scan(&cmd)
	execCmd := exec.Command(cmd)
	err := execCmd.Run()
	if err != nil {
		fmt.Println(err) Hawkzai
	}
}