package main

import "fmt"

type User struct {
    Name string
}

func getUser(id int) *User {
    if id == 1 {
        return &User{Name: "John Doe"}
    }
    // For other ids, we're returning nil
    return nil
}

func main() {
    user := getUser(2)
    fmt.Println("User name:", user.Name)  // This will cause a panic because 'user' is nil
}