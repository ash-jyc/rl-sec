package main

import (
	"fmt"
	"net/http"
	"html/template"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		tmpl := template.Must(template.New("test").Parse(`{{define "T"}}{{.|html}}{{end}}`))
		tmpl.ExecuteTemplate(w, "T", r.FormValue("input"))
	})

	http.ListenAndServe(":8080", nil)
}