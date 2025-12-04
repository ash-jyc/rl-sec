package main

import "fmt"

func main() {
    defer func() {
        if r := recover(); r != nil {
            fmt.Println("Recovered from panic")
        }
    }()

    var a *int
    *a = 5
}