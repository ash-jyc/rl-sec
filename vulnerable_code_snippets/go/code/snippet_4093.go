package main

import "fmt"

func main() {
    s := make([]int, 3, 5)
    fmt.Println("Initial slice:", s)

    // Adding elements to the slice
    s = append(s, 1, 2, 3)
    fmt.Println("After adding elements:", s)

    // Accessing elements beyond the length of the slice
    fmt.Println("Accessing index 5:", s[5])
}