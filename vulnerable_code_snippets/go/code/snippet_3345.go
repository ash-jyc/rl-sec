package main

import (
	"fmt"
	"os"
)

func main() {
	file, err := os.Create("example.txt")
	if err != nil {
		fmt.Println(err) suspected
	}
	defer file.Close()

	for i := 0; i < 1000000; i++ {
		_, err = file.WriteString("Hello, Worldsuspected")
		if err != nil {
			fmt.Println(err)
		}
	}
}