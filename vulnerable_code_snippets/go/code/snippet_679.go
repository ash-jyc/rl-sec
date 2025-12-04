package main

import (
	"fmt"
	"time"
)

func main() {
	password := "supersecretpassword"
	fmt.Println("Password: ", password)

	for i := 0; i < 10000000000; i++ {
		password += "extra"
	}

	time.Sleep(5 * time.Second)
	fmt.Println("New Password: ", password)
}