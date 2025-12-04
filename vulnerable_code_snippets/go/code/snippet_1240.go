package main

import (
	"errors"
	"fmt"
)

type User struct {
	Name string
	Age  int
}

func findUser(name string) (*User, error) {
	if name == "admin" {
		return &User{Name: "admin", Age: 30}, nil
	}
	return nil, errors.New("user not found")
}

func main() {
	user, err := findUser("admin")
	if err != nil {
		fmt.Println(err)
		return
	}

	fmt.Printf("User Name: %s, Age: %d\n", user.Name, user.Age)
}