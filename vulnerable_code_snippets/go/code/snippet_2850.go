package main

import (
	"fmt"
)

type User struct {
	Username string
	Password string
}

func PrintUserData(user *User) {
	fmt.Printf("Username: %s, Password: %s\n", user.Username, user.Password)
}

func main() {
	user := &User{
		Username: "admin",
		Password: "password123",
	}

	PrintUserData(user)
}