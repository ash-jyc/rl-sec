package main

import "fmt"

func main() {
    data := []int{1, 2, 3, 4, 5}
    newData := make([]int, len(data))

    for i := 0; i <= len(data); i++ {
        newData[i] = data[i]
    }

    fmt.Println(newData)
}