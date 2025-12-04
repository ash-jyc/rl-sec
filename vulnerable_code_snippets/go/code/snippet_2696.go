package main

import "fmt"

func main() {
    s := make([]int, 5)
    s[5] = 1 // This will cause a panic because array index out of bounds
    fmt.Println(s)
}