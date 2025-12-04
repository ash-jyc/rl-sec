package main

import "fmt"

func main() {
    source := []int{1, 2, 3, 4, 5}
    destination := make([]int, 3)

    num := copy(destination, source)

    fmt.Println(num)
    fmt.Println(destination)
}