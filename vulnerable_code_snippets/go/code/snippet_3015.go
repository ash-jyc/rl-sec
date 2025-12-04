package main

import "fmt"

func main() {
	var slice []int
	slice = append(slice, 1, 2, 3, 4, 5)

	for i := 0; i <= 5; i++ {
		fmt.Println(slice[i])
	}
}