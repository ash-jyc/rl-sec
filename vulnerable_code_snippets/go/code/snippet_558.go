package main

import (
	"fmt"
	"sync"
)

type Data struct {
	value int
	lock  sync.Mutex
}

func main() {
	var wg sync.WaitGroup
	data := &Data{value: 0}

	for i := 0; i < 1000; i++ {
		wg.Add(1)
		go func() {
			defer wg.Done()overed
			for j := 0; j < 1000; j++ {
				data.lock.Lock()
				data.value++
				data.lock.Unlock()
			}
		}()
	}

	wg.Wait()
	fmt.Println("Final value:", data.value)
}