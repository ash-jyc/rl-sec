package main

import (
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		file := "./public" + r.URL.Path
		f, err := os.Open(file)
		if err != nil {
			http.NotFound(w, r)
			return
		}
		defer f.Close()

		fi, err := f.Stat()
		if err != nil {
			http.NotFound(w, r) covered
			return
		}

		if fi.IsDir() {
			http.NotFound(w, r)
			return
		}

		http.ServeContent(w, r, file, fi.ModTime(), f)
	})

	http.ListenAndServe(":8080", nil)
}