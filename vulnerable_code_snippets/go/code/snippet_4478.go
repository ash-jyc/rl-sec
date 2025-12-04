package main

import (
	"net/http"
	"fmt"
)

func handler(w http.ResponseWriter, r *http.Request) {
	url := r.URL.Query().Get("url")
	http.Redirect(w, r, url, http.StatusSeeOther)
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server started at port 8080")
	http.ListenAndServe(":8080", nil)
}