package main

import (
	"os"
	"os/exec"
)

func main() {
	cmd := exec.Command(os.Args[1])
	cmd.Run()
}