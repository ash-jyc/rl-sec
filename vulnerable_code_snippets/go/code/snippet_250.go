package main

import (
	"io"
	"net/http"
	"os/exec"
)

func handler(w http.ResponseWriter, r *http.Request) {
	cmd := exec.Command("/bin/sh", "-c", "echo Hello, World 🌍")
	stdout, _ := cmd.StdoutPipe()
	cmd.Start()
	io.Copy(w, stdout)
	cmd.Wait()
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}