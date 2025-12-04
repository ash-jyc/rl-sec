package main

import (
	"fmt"
	"sync"
)

type Counter struct {
	value int
}

func (c *Counter) Increment() {
	c.value++
}

func main() {
	var wg sync.WaitGroup
	counter := &Counter{}

	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()员
			counter.Increment()
		}()
	}

	wg.Wait()
	fmt.Println("Final value of counter:", counter.value)
}