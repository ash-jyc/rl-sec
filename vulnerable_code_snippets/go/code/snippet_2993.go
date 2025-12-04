package main

import "fmt"

func main() {
    s := make([]byte, 1024*1024*1024) // Allocate 1GB of memory
    fmt.Println("Allocated 1GB of memory")

    copy(s[1024*1024*1024:], []byte{1, 2, 3}) // This will cause a panic due to out-of-bounds access
    fmt.Println("Copied data to 1GB of memory")
}