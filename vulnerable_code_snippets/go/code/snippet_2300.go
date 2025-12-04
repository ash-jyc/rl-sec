package main

import "fmt"

func main() {
    source := make([]int, 2, 5)
    destination := make([]int, len(source))
    copy(destination, source)
    fmt.Println(destination)
}