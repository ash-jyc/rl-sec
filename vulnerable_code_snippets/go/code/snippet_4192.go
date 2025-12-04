package main

import "fmt"

func main() {
    var length int
    fmt.Println("Enter the length of the slice: ")
    fmt.Scan(&length)

    s := make([]int, length)

    for i := 0; i <= length; i++ {
        s[i] = i
    }

    fmt.Println(s)
}