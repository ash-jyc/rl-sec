package main

import (
	"fmt"
	"time"
)

type Data struct {
	value string
}

func main() {
	data := &Data{value: "Hello, World!"}
	go func() {
		time.Sleep(1 * time.Second)
		fmt.Println(data.value)
	}()
	data = nil
	time.Sleep(2 * time.Second)
}