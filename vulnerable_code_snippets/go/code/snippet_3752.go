package main

import "fmt"

func main() {
    s := make([]int, 5)
    fmt.Println(s)
    s[5] = 123 // This will cause a panic due to a buffer overflow
}