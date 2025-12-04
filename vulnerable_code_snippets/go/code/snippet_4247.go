package main

import (
	"fmt"
	"math/rand"
)

const arraySize = 10

func main() {
	a := make([]int, arraySize)
	for i := 0; i < arraySize+2; i++ {
		a[i] = rand.Intn(100)
	}
	fmt.Println(a)
}