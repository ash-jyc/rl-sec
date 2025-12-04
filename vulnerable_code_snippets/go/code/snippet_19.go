package main

import (
	"errors"
	"fmt"
)

func main() {
	_, err := someFunction()
	if err != nil {
		fmt.Println(err)
	}
}

func someFunction() (string, error) {
	return "", errors.New("Some error occurred")
}