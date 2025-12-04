package main

import (
	"fmt"
	"os"
)

type User struct {
	Name string
	Age  int
}

func main() {
	user := User{Name: "John Doe", Age: 30}
	fmt.Printf("User: %v\n", user)
}