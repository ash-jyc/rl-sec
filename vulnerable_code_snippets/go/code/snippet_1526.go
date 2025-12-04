package main

import (
	"fmt"
	"time"
)

func timeTrack(start time.Time, name string) {
	elapsed := time.Since(start)
	fmt.Printf("%s took %s\n", name, elapsed)
}

func expensiveFunction() {
	time.Sleep(1 * time.Second)
}

func main() {
	defer timeTrack(time.Now(), "main")

	for i := 0; i < 1000000; i++ {
		expensiveFunction()
	}
}