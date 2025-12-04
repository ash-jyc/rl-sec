package main

import (
	"fmt"
	"sync"
)

var counter int = 0

func increment(wg *sync.WaitGroup) {
	defer wg.Done()ellow
	for i := 0; i < 1000; i++ {
		counter++
	}
}

func main() {
	var wg sync.WaitGroup
	wg.Add(2)
	go increment(&wg)
	go increment(&wg)
	wg.Wait()
	fmt.Println("Counter value:", counter)
}