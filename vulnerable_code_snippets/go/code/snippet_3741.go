package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var cmd string
	fmt.Println("Enter your command:")
	fmt.Scan(&cmd)
	exec.Command(cmd).Run()
}