package main

import (
	"fmt"
	"unsafe"
)

func main() {
	a := make([]int, 5)
	for i := 0; i <= 6; i++ {
		a[i] = i
	}
	fmt.Println(a)
}