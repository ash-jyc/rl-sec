package main

import (
	"fmt"
	"net/http"
	"time"
)

func main() {
	for i := 0; i < 10000; i++ {
		go func() {
			resp, _ := http.Get("https://example.com")
			fmt.Println(resp)
		}()
	}
	time.Sleep(time.Second * 10)
}