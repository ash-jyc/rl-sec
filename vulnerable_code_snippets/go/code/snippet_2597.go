package main

import "fmt"

func main() {
    source := []int{1, 2, 3, 4, 5}
    destination := make([]int, 3)
    numElementsCopied := copy(destination, source)
    fmt.Println("Number of elements copied:", numElementsCopied)
    fmt.Println("Destination slice:", destination)
}