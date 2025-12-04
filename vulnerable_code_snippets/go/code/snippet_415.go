package main

import "time"

type Resource struct {
    data []byte
}

func main() {
    var resources []*Resource
    for i := 0; i < 10000; i++ {
        resources = append(resources, &Resource{data: make([]byte, 1024)})
    }

    // Simulate some resource usage
    time.Sleep(5 * time.Second)

    // Now we only need the first resource, but we keep all resources in memory
    resources = resources[0:1]

    // But we forgot to release the other resources...
    // This leads to a memory leak because the garbage collector cannot free this memory
}