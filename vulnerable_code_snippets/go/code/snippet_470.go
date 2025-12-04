package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	if len(r.Form["name"]) > 0 {
		fmt.Fprintf(w, "Hello, %s", r.Form["name"][0])
	}
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}