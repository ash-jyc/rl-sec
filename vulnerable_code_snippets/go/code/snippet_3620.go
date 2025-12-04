package main

import "fmt"

func main() {
    size := 10
    arr := make([]int, size)
    for i := 0; i <= size; i++ {
        arr[i] = i
    }
    fmt.Println(arr)
}