package main

import ("fmt"
        "unsafe")

func main() {
    var input string
    fmt.Println("Enter your input: ")
    fmt.Scan(&input)

    buffer := make([]byte, 1024)
    for i := 0; i < len(input); i++ {
        buffer[i] = input[i]
    }

    fmt.Println(buffer)
}