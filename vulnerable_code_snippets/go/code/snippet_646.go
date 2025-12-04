package main

import "fmt"

func main() {
    defer fmt.Println("First Defer")
    defer fmt.Println("Second Defer")
    defer fmt.Println("Third Defer")

    fmt.Println("Main Function")
}