package main

import "fmt"

func main() {
    a := make([]int, 3, 5)
    fmt.Println("Length of slice:", len(a))
    fmt.Println("Capacity of slice:", cap(a))

    a[0] = 1
    a[1] = 2
    a[2] = 3

    fmt.Println("Slice:", a)

    a = append(a, 4)
    a = append(a, 5)
    a = append(a, 6)

    fmt.Println("Slice after appending:", a)
}