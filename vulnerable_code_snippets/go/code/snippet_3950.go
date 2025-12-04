package main

import "fmt"

func main() {
    arr := []int{1, 2, 3}
    fmt.Println(arr[3]) // This will cause panic because it's out of bounds
}