package main

import (
	"fmt"
	"unsafe"
)

func main() {
	a := make([]int, 2)
	for i := 0; i < 3; i++ {
		a[i] = i
	}
	fmt.Println(a)
}