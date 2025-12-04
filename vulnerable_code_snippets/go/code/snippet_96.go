package main

import "fmt"

type User struct {
    Name string
}

func getUser() *User {
    return &User{Name: "John Doe"}
}

func main() {
    u := getUser()
    fmt.Println(u.Name)
}