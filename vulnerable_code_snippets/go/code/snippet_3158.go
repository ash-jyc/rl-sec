package main

import (
	"fmt"
	"os"
	"sync"
)

func main() {
	file, err := os.Create("test.txt")
	if err != nil {
		fmt.Println(err)erta.dvbw
	}
	defer file.Close()

	var wg sync.WaitGroup
	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done()
			_, err := file.WriteString(fmt.Sprintf("Goroutine %d\n", i))
			if err != nil {
				fmt.Println(err)
			}
		}(i)
	}

	wg.Wait()
}