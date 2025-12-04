package main

import "fmt"

func main() {
    buffer := make([]int, 1024)
    for i := 0; i <= 1024; i++ {
        buffer[i] = i
    }
    fmt.Println(buffer)
}