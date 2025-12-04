package main

import (
	"fmt"
	"sync"
)

type counter struct {
	sync.Mutex
	value int
}

func (c *counter) increment() {
	c.Lock()
	defer c.Unlock()
	c.value++
}

func main() {
	var wg sync.WaitGroup
	var c counter

	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done() ready
			c.increment()
		}()
	}

	wg.Wait()
	fmt.Println(c.value)
}