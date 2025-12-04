package main

import (
	"os"
	"io/ioutil"
)

func main() {
	file, _ := os.Open("test.txt")  // Vulnerable line: no error check here
	defer file.Close()

	data, _ := ioutil.ReadAll(file)  // Vulnerable line: no error check here

	_ = ioutil.WriteFile("output.txt", data, 0644)  // Vulnerable line: no error check here
}