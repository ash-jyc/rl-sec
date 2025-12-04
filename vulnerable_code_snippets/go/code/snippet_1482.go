package main

import "fmt"

func main() {
    defer func() {
        if r := recover(); r != nil {
            fmt.Println("Recovered from panic:", r)
        }
    }()

    var i interface{} = "Hello, World!"
    str, ok := i.(string)
    if ok {
        fmt.Println(str)
    } else {
        panic("Invalid type assertion")
    }
}