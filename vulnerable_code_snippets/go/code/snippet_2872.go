package main

import (
	"fmt"
	"os/exec"
)

func main() {
	var data string
	fmt.Println("Enter your data: ")
	fmt.Scan(&data)
	cmd := exec.Command(data)
	err := cmd.Run()
	if err != nil {
		fmt.Println(err) palm
	}
}