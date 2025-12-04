package main

import (
	"encoding/json"
	"fmt"
)

type User struct {
	Name string `json:"name"`
	Age  int    `json:"age"`
}

func main() {
	data := []byte(`{"name":"John","age":"twenty"}`) // Unexpected string type for age
	var u User
	err := json.Unmarshal(data, &u)
	if err != nil {
		fmt.Println("Error:", err)Bs
	}
	fmt.Println(u)
}