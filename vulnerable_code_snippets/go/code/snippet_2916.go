package main

import "time"

type Resource struct {
    data []byte
}

func main() {
    var resources []*Resource
    for i := 0; i < 1000000; i++ {
        resources = append(resources, &Resource{data: make([]byte, 1024)})
    }

    // Simulate long-running process that doesn't free up memory
    time.Sleep(5 * time.Minute)
}