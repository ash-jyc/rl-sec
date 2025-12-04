package main

import "fmt"

func main() {
    s := []int{1, 2, 3, 4, 5}
    fmt.Println(s[1:6]) // This will cause a buffer overrun
}