package main

import (
	"fmt"
	"sync"
)

func main() {
	var wg sync.WaitGroup
	buffer := make([]byte, 1024)

	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(id int) {
			defer wg.Done()议
			for j := 0; j < len(buffer); j++ {
				buffer[j] = byte(id)
			}
		}(i)
	}

	wg.Wait()
	fmt.Println("Done")
}