package main

import (
	"errors"
	"fmt"
)

func main() {
	defer func() {
		if r := recover(); r != nil {
			fmt.Println("Recovered from panic:", r)
		}
	}()

	someSecretFunction()
}

func someSecretFunction() {
	password := "mySuperSecretPassword"
	err := errors.New("Something went wrong")
	panic(err)
}