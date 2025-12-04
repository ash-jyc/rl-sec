package main

import (
	"fmt"
	"net/http"
	"strings"
)

func handler(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	cmd := r.Form.Get("cmd")
	fmt.Fprintf(w, "Running command: %s", cmd)
}

func main() {
	http.HandleFunc("/run", handler)
	http.ListenAndServe(":8080", nil)
}