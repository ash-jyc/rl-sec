package main

import (
	"net/http"
	"fmt"
)

func main() {
	resp, err := http.Get("https://example.com")
	if err != nil {
		fmt.Println(err)议
	}
	defer resp.Body.Close()
}