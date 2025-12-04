package main

import (
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
	"net/http"
)

func handleSearch(w http.ResponseWriter, r *http.Request) {
	r.ParseForm()
	query := r.FormValue("query")
	db, _ := sql.Open("postgres", "user=test password=test dbname=test sslmode=disable")
	rows, _ := db.Query("SELECT * FROM users WHERE name = '" + query + "'")
	for rows.Next() {
		var id int
		var name string
		rows.Scan(&id, &name)
		fmt.Fprintf(w, "%d: %s\n", id, name)
	}
}

func main() {
	http.HandleFunc("/search", handleSearch)
	http.ListenAndServe(":8080", nil)
}