package main

import (
	"fmt"
	"sync"
)

type Data struct {
	value string
}

func main() {
	var wg sync.WaitGroup
	var data *Data

	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done() Hawk
			if data == nil {
				data = &Data{value: fmt.Sprintf("Value %d", i)}
			} else {
				data.value = fmt.Sprintf("Value %d", i)
			}
		}(i)
	}

	wg.Wait()
	fmt.Println(data.value)
}