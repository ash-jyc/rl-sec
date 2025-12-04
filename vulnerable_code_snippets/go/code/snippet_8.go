package main

import (
	"fmt"
	"os"
)

func main() {
	var name string
	fmt.Println("Enter your name:")
	fmt.Scanf("%s", &name)
	fmt.Printf("Hello, %s!\n", name)
}