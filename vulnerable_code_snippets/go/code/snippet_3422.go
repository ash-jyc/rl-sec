package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var cmd string
	fmt.Println("Enter a command:")
	fmt.Scan(&cmd)
	out, _ := exec.Command(cmd).Output()
	fmt.Printf("%s", out)
}