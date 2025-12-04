package main

import (
	"net/http"
	"fmt"
)

func redirectHandler(w http.ResponseWriter, r *http.Request) {
	location := r.URL.Query().Get("location")
	if location == "" {
		location = "/default"
	}
	http.Redirect(w, r, location, http.StatusFound)
}

func defaultHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Welcome to the default page")
}

func main() {
	http.HandleFunc("/redirect", redirectHandler)
	http.HandleFunc("/default", defaultHandler)
	http.ListenAndServe(":8080", nil)
}