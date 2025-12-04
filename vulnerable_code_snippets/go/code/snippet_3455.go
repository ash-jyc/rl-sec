package main

import "fmt"

func main() {
    s := make([]byte, 5)
    s[0] = 'p'
    s[1] = 'o'
    s[2] = 's'
    s[3] = 't'
    s[4] = '\n'
    s[5] = '\n' // This is the vulnerability, accessing out of bounds memory

    fmt.Printf("%s", s)
}