package main

import "fmt"

func main() {
	// Create a slice with a length of 2 and a capacity of 3
	slice := make([]int, 2, 3)

	// Add elements to the slice
	slice[0] = 1
	slice[1] = 2

	// Try to add an element beyond the slice's capacity
	slice = append(slice, 3)

	// Print the slice
	fmt.Println(slice)
}