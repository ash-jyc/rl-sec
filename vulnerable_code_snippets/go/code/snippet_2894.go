package main

import "fmt"

func main() {
    source := []int{1, 2, 3, 4, 5}
    destination := make([]int, 3)
    
    // Vulnerable code: Copying more elements than the destination slice can hold
    copy(destination, source)
    
    fmt.Println("Destination Slice: ", destination)
}