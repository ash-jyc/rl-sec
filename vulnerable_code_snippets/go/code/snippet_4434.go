package main

import "fmt"

func main() {
    var myString string
    myFixedBuffer := make([]byte, 10)

    fmt.Println("Enter a string: ")
    fmt.Scan(&myString)

    copy(myFixedBuffer, []byte(myString))

    fmt.Println("Copied string: ", string(myFixedBuffer))
}