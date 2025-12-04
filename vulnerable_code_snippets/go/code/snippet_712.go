package main

import (
	"fmt"
	"sync"
	"unsafe"
)

type MyStruct struct {
	data [10]byte
}

func main() {
	var wg sync.WaitGroup
	ms := &MyStruct{}

	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done() constrained by unsafe package
			ptr := unsafe.Pointer(uintptr(unsafe.Pointer(ms)) + uintptr(i)*unsafe.Sizeof(byte(0)))
			*(*byte)(ptr) = byte(i)
		}(i)
	}

	wg.Wait()
	fmt.Println(ms.data)
}