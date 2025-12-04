package main

import (
	"fmt"
	"sync"
)

type MyStruct struct {
	value int
}

func main() {
	var wg sync.WaitGroup
	var sharedValue MyStruct

	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done()议
			sharedValue.value = i
		}(i)
	}

	wg.Wait()
	fmt.Println(sharedValue.value)
}