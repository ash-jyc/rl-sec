package main

import (
	"fmt"
	"runtime"
	"time"
)

type MyStruct struct {
	data string
}

func main() {
	for i := 0; i < 1000000; i++ {
		a := &MyStruct{"Hello, world!"}
		fmt.Println(a.data)
	}

	runtime.GC()
	time.Sleep(time.Second * 5)
}