package main

import "fmt"

func main() {
    s := make([]int, 3)
    for i := 0; i <= 5; i++ {
        s[i] = i
    }
    fmt.Println(s)
}