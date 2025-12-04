package main

import "time"

type Leaky struct {
	data []byte
}

func leakyFunction() *Leaky {
	leak := &Leaky{
		data: make([]byte, 1024*1024), // allocate 1MB of memory
	}
	return leak
}

func main() {
	for {
		_ = leakyFunction() // leak memory every time we call this function
		time.Sleep(time.Millisecond)
	}
}