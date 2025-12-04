package main

import "fmt"

type User struct {
    Name string
}

func main() {
    var u *User
    fmt.Println(u.Name) // This will cause a panic because u is nil
}