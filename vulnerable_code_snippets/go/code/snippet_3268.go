package main

import "fmt"

func main() {
    var length int
    fmt.Println("Enter the length of the slice: ")
    fmt.Scan(&length)
    s := make([]int, length)
    fmt.Println("The slice is: ", s)
}