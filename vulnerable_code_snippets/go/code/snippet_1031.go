package main

import (
	"fmt"
	"time"
)

func main() {
	file := openFile("data.txt")
	defer file.Close()
	for i := 0; i < 10; i++ {
		writeToFile(file, fmt.Sprintf("Line %d\n", i))
		time.Sleep(time.Second)
	}
}

func openFile(name string) *os.File {
	file, err := os.OpenFile(name, os.O_CREATE|os.O_WRONLY, 0644)
	if err != nil {
		panic(err)
	}
	return file
}

func writeToFile(file *os.File, data string) {
	_, err := file.WriteString(data)
	if err != nil {
		panic(err)
	}
}