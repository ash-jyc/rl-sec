package main

import "fmt"

func main() {
    src := make([]byte, 1024*1024)
    dst := make([]byte, 1024)

    copy(dst, src)

    fmt.Println("Copied data: ", string(dst))
}