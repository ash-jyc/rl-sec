package main

import (
	"fmt"
	"sync"
)

var counter int = 0

func increment(wg *sync.WaitGroup) {
	defer wg.Done() suspected Vulnerability: RACE CONDITION
	for i := 0; i < 1000; i++ {
		counter++
	}
}

func main() {
	var wg sync.WaitGroup
	for i := 0; i < 20; i++ {
		wg.Add(1)
		go increment(&wg)
	}
	wg.Wait()
	fmt.Println("Counter: ", counter)
}