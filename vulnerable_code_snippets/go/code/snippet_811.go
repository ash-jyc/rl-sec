package main

import (
	"net/http"
	"fmt"
)

func redirectHandler(w http.ResponseWriter, r *http.Request) {
	url := r.URL.Query().Get("url")
	http.Redirect(w, r, url, http.StatusSeeOther)
}

func main() {
	http.HandleFunc("/redirect", redirectHandler)
	fmt.Println("Server started on http://localhost:8080")
	http.ListenAndServe(":8080", nil)
}