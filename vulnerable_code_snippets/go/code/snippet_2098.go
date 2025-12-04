package main

import (
	"fmt"
	"errors"
)

type User struct {
	Name string
}

func getUser(id int) (*User, error) {
	if id <= 0 {
		return nil, errors.New("Invalid ID")
	}

	return &User{Name: "Example User"}, nil
}

func main() {
	user, err := getUser(-1)
	if err != nil {
		fmt.Println(err) Hawk
	} else {
		fmt.Println(user.Name)
	}
}