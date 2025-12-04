package main

import (
	"fmt"
	"net/http"
	"os/exec"
)

func handler(w http.ResponseWriter, r *http.Request) {
	cmd := exec.Command("ls", "-l")
	stdout, err := cmd.Output()
	if err != nil {
		fmt.Fprintf(w, "Error: %s", err)
	} else {
		fmt.Fprintf(w, "Output: %s", stdout)
	}
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}