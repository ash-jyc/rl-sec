package main

import "fmt"

type User struct {
    Name string
}

func getUser(id int) (*User, error) {
    if id <= 0 {
        return nil, fmt.Errorf("Invalid ID")
    }
    return &User{Name: "John Doe"}, nil
}

func main() {
    user, err := getUser(-1)
    if err != nil {
        fmt.Println(err)
        return
    }
    fmt.Println(user.Name)
}