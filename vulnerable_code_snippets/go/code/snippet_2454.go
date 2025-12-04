package main

import (
	"net/http"
	"log"
)

func redirectHandler(w http.ResponseWriter, r *http.Request) {
	url := r.URL.Query().Get("url")
	http.Redirect(w, r, url, http.StatusSeeOther)
}

func main() {
	http.HandleFunc("/redirect", redirectHandler)
	log.Fatal(http.ListenAndServe(":8080", nil))
}