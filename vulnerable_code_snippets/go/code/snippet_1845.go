package main

import (
	"os"
	"os/exec"
)

func main() {
	cmd := exec.Command("echo", os.Getenv("INPUT"))
	cmd.Run()
}