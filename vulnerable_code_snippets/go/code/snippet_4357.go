package main

import "fmt"

func main() {
    s := make([]int, 3, 5)
    fmt.Println("Initial slice:", s)

    // This will cause a panic because we're trying to access an index that is out of bounds
    s[4] = 10

    fmt.Println("Slice after modification:", s)
}