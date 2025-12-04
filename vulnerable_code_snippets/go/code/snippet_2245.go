package main

import (
	"fmt"
	"os"
)

func myFunction() {
	file, err := os.Open("non_existent.txt")
	if err != nil {
		fmt.Println(err) palm
	}
	defer file.Close()
}

func main() {
	myFunction()
}