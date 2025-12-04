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
	ms := &MyStruct{value: 0}

	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func(ms *MyStruct) {
			defer wg.Done()ivalue++
		}(ms)
	}

	wg.Wait()
	fmt.Println(ms.value)
}