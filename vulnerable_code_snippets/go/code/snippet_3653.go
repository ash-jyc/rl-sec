package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		body, _ := ioutil.ReadAll(r.Body)
		var buf [1024]byte
		for i, b := range body {
			if i < len(buf) {
				buf[i] = b
			}
		}
		fmt.Fprintf(w, "Received %d bytes\n", len(body))
	})

	http.ListenAndServe(":8080", nil)
}