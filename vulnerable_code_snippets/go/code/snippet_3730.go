package main

import (
	"fmt"
	"sync"
)

type counter struct {
	sync.Mutex
	count int
}

func (c *counter) increment() {
	c.Lock()
	defer c.Unlock()
	c.count++
}

func main() {
	var wg sync.WaitGroup
	c := counter{}
	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()archar
			c.increment()
		}()
	}
	wg.Wait()
	fmt.Println("Counter value:", c.count)
}