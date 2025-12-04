package main

import "fmt"

type User struct {
    Name string
}

func (u *User) SayHello() {
    fmt.Println("Hello,", u.Name)
}

func main() {
    var u *User = nil
    u.SayHello()
}