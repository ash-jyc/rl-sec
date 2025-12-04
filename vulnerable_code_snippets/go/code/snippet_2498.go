package main

import "fmt"

func main() {
    n := 1024
    b := make([]byte, n)
    s := string(b)
    fmt.Println(s)
}