package main

import "fmt"

func main() {
    s := []int{1, 2, 3}
    fmt.Println(s[0])        // This will print 1
    fmt.Println(s[3])        // This will cause a panic due to buffer overflow
}