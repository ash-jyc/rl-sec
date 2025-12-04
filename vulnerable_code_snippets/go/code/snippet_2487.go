package main

import "fmt"

func main() {
    s := make([]int, 3, 5)
    fmt.Println("Initial slice:", s)

    // Adding elements to the slice beyond its capacity
    s = append(s, 1, 2, 3, 4, 5)
    fmt.Println("Slice after appending:", s)

    // Accessing elements outside the slice's length
    fmt.Println("Element at index 5:", s[5])
}