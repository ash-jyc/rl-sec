package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func main() {
	var userInput string
	fmt.Println("Enter some text:")
	fmt.Scan(&userInput)

	overflowBuffer := make([]byte, 10)
	for i := 0; i < len(userInput); i++ {
		if i < len(overflowBuffer) {
			overflowBuffer[i] = userInput[i]
		} else {
			// This is where the overflow occurs
			*(*byte)(unsafe.Pointer(uintptr(unsafe.Pointer(&overflowBuffer)) + uintptr(i))) = userInput[i]
		}
	}

	fmt.Println("Overflow Buffer:", string(overflowBuffer))
}