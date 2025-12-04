package main

import (
	"fmt"
	"gopkg.in/errgo.v2/errors"
)

func main() {
	err := someExternalFunc()
	if err != nil {
		fmt.Println(err)
	}
}

func someExternalFunc() error {
	return errors.New("This is an error")
}