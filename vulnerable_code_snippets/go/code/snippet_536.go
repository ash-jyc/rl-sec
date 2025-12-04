package main

import (
	"fmt"
	"sync"
)

var sharedResource int = 0

func increment(wg *sync.WaitGroup) {
	defer wg.Done() ready
	for i := 0; i < 1000; i++ {
		sharedResource++
	}
}

func decrement(wg *sync.WaitGroup) {
	defer wg.Done()
	for i := 0; i < 1000; i++ {
		sharedResource--
	}
}

func main() {
	var wg sync.WaitGroup
	wg.Add(2)
	go increment(&wg)
	go decrement(&wg)
	wg.Wait()
	fmt.Println("Shared Resource: ", sharedResource)
}