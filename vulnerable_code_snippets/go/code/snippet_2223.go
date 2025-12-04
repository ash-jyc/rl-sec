package main

import "fmt"

func main() {
	var buffer [10]int
	for i := 0; i <= 10; i++ {
		buffer[i] = i
	}
	fmt.Println(buffer)
}