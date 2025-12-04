package main

import (
	"os"
	"io/ioutil"
)

func main() {
	fileName := "sensitive_data.txt"
	data := []byte("This is sensitive data")
	err := ioutil.WriteFile(fileName, data, 0644)
	if err != nil {
		panic(err)
	}

	// Vulnerability: The file permissions are set to 0644 which means the file is readable by the group and others.
	// This is a security risk as it allows other users on the system to access the file.

	data, err = ioutil.ReadFile(fileName)
	if err != nil {
		panic(err)
	}

	// Vulnerability: The file is readable by everyone. This can lead to unauthorized access to the file.

	os.Stdout.Write(data)
}