package main

import "fmt"

func recursiveFunction(n int) {
    fmt.Println(n)
    recursiveFunction(n + 1)
}

func main() {
    recursiveFunction(1)
}