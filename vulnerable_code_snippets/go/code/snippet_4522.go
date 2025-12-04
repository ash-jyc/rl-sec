package main

import (
	"io"
	"net/http"
)

func helloWorldHandler(w http.ResponseWriter, r *http.Request) {
	body := make([]byte, 512)
	for {
		_, err := r.Body.Read(body)
		if err == io.EOF {
			break
		}
	}
	io.WriteString(w, "Hello, world!\n")
}

func main() {
	http.HandleFunc("/", helloWorldHandler)
	http.ListenAndServe(":8080", nil)
}