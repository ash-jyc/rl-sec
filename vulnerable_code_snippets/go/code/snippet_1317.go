package main

import "fmt"

func main() {
    arr := make([]int, 3)
    for i := 0; i <= 3; i++ {
        arr[i] = i
    }
    fmt.Println(arr)
}