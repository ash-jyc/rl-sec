package main

import "fmt"

func main() {
    s := make([]int, 3, 5)
    fmt.Println("Slice s:", s)

    s[0] = 1
    s[1] = 2
    s[2] = 3
    s[3] = 4 // This will cause a buffer overflow

    fmt.Println("Slice s after overflow:", s)
}