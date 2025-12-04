package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	userInput := r.URL.Query().Get("input")
	fmt.Fprintf(w, "You entered: %s", userInput)
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}