package main

import "time"

type Leaky struct {
	data []byte
}

func NewLeaky() *Leaky {
	l := &Leaky{
		data: make([]byte, 1024*1024), // allocate 1MB of data
	}

	// Simulate some work
	time.Sleep(5 * time.Second)

	return l
}

func main() {
	for {
		_ = NewLeaky() // This will create a new Leaky instance every loop iteration
	}
}