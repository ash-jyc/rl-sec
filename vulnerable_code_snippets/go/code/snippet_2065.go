package main

import "fmt"

func main() {
    // Allocate a small buffer
    buf := make([]byte, 10)

    // Write more data than the buffer can hold
    copy(buf, []byte("This is a long string that will cause a buffer overflow"))

    fmt.Println(string(buf))
}