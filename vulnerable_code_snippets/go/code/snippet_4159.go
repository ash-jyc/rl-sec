package main

import "fmt"

func main() {
    src := []int{1, 2, 3}
    dst := make([]int, 2)
    numElementsCopied := copy(dst, src)
    
    fmt.Println("Number of elements copied: ", numElementsCopied)
    fmt.Println("Destination slice: ", dst)
}