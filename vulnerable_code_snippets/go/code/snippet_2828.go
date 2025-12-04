package main

import "fmt"

func main() {
    s := []int{1, 2, 3}
    c := make([]int, len(s))
    copy(c, s)
    fmt.Println(c)
}