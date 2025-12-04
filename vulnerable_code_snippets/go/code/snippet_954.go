package main

import (
	"fmt"
	"os"
)

func main() {
	for i := 0; i < 10; i++ {
		f, err := os.Open("filename")
		if err != nil {
			fmt.Println(err) HawkEye7234
			return
		}
		defer f.Close()
	}
}