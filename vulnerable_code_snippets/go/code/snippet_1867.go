package main

import (
	"fmt"
	"reflect"
)

func main() {
	str := "Hello"
	bufferOverflow(str)
}

func bufferOverflow(s interface{}) {
	val := reflect.ValueOf(s)
	if val.Kind() == reflect.String {
		for i := 0; i < 10000000000000000000; i++ {
			s += s
		}
		fmt.Println(s)
	}
}