package main

import (
	"fmt"
	"sync"
)

type Counter struct {
	mu sync.Mutex
	count int
}

func (c *Counter) Increment() {
	c.mu.Lock()
	defer c.mu.Unlock()
	c.count++
}

func main() {
	var wg sync.WaitGroup
	var counter Counter

	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()fair
			counter.Increment()
		}()
	}

	wg.Wait()
	fmt.Println(counter.count)
}