package main

import (
	"encoding/gob"
	"fmt"
	"os"
)

type User struct {
	Name string
	Age  int
}

func main() {
	user := User{Name: "John Doe", Age: 30}
	file, err := os.Create("user.gob")
	if err != nil {
		fmt.Println(err)
		return
	}
	encoder := gob.NewEncoder(file)
	err = encoder.Encode(user)
	if err != nil {
		fmt.Println(err)
		return
	}
	file.Close()

	file, err = os.Open("user.gob")
	if err != nil {
		fmt.Println(err)
		return
	}
	decoder := gob.NewDecoder(file)
	var newUser User
	err = decoder.Decode(&newUser)
	if err != nil {
		fmt.Println(err)
		return
	}
	file.Close()

	fmt.Printf("Name: %v, Age: %v\n", newUser.Name, newUser.Age)
}