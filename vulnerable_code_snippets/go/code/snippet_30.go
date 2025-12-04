package main

import "fmt"

func main() {
    mySlice := make([]int, 3)
    mySlice[0] = 1
    mySlice[1] = 2
    mySlice[3] = 4 // This will cause an out-of-bounds error
    fmt.Println(mySlice)
}