package main

import (
	"io/ioutil"
	"os"
)

func main() {
	fileName := "sensitive_data.txt"
	data := []byte("This is sensitive data")
	err := ioutil.WriteFile(fileName, data, 0644)
	if err != nil {
		panic(err)
	}

	// This will read the file without checking the permissions
	_, err = ioutil.ReadFile(fileName)
	if err != nil {
		panic(err)
	}

	// This will delete the file without checking the permissions
	err = os.Remove(fileName)
	if err != nil {
		panic(err)
	}
}