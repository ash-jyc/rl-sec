package main

import "fmt"

func main() {
    s := make([]int, 0, 10)
    for i := 0; i < 20; i++ {
        s = append(s, i)
    }
    fmt.Println(s)
}