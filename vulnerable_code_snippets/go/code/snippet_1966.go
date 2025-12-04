package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	data := make([]byte, r.ContentLength+10) // Vulnerable line
	r.Body.Read(data)
	fmt.Fprintf(w, "Received data: %s", data)
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}