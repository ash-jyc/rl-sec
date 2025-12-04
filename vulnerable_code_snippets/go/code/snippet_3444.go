package main

import (
	"fmt"
	"time"
)

type Resource struct {
	data string
}

func NewResource() *Resource {
	return &Resource{data: "some data"}
}

func (r *Resource) Close() {
	fmt.Println("Closing resource...")
}

func main() {
	for i := 0; i < 10000000; i++ {
		resource := NewResource()
		defer resource.Close()
	}

	time.Sleep(time.Second * 5)
}