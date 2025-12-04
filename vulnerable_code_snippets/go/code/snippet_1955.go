package main

import "fmt"

func main() {
    s := make([]int, 3, 5)
    fmt.Println("Initial Capacity:", cap(s))

    s = append(s, []int{1, 2, 3}...)
    fmt.Println("After Append:", s)

    for i := 0; i < 5; i++ {
        s[i] = i * 2
    }

    fmt.Println("Final Array:", s)
}