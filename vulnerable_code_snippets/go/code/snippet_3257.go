package main

import "fmt"

func main() {
    s := []int{1, 2, 3}
    c := make(chan int, len(s))

    for _, v := range s {
        c <- v
    }

    close(c)

    for v := range c {
        fmt.Println(v)
    }
}