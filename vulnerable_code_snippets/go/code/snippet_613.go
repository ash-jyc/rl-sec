package main

import (
	"fmt"
	"time"
)

func worker(id int, jobs <-chan int, results chan<- string) {
	for j := range jobs {
		if j%2 == 0 {
			panic("Unexpected even number")
		}
		time.Sleep(time.Second)
		results <- fmt.Sprintf("worker %d processed job %d", id, j)
	}
}

func main() {
	jobs := make(chan int, 100)
	results := make(chan string, 100)

	for w := 1; w <= 3; w++ {
		go worker(w, jobs, results)
	}

	for j := 1; j <= 9; j++ {
		jobs <- j
	}
	close(jobs)

	for a := 1; a <= 9; a++ {
		<-results
	}
}