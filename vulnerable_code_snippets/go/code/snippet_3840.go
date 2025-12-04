package main

import "fmt"

func main() {
	var slice []int
	slice = append(slice, 1, 2, 3, 4, 5)
	fmt.Println("Elements of slice: ", slice)

	for i := 0; i <= 5; i++ {
		fmt.Println("Element at index", i, "is", slice[i])
	}
}