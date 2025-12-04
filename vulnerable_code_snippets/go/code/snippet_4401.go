package main

import (
	"database/sql"
	"fmt"
	"net/http"

	_ "github.com/lib/pq"
)

func main() {
	db, err := sql.Open("postgres", "user=test password=test dbname=test sslmode=disable")
	if err != nil {
		fmt.Println(err)
	}
	defer db.Close()

	http.HandleFunc("/user", func(w http.ResponseWriter, r *http.Request) {
		id := r.URL.Query().Get("id")
		query := fmt.Sprintf("SELECT * FROM users WHERE id = %s", id)
		rows, err := db.Query(query)
		if err != nil {
			fmt.Fprint(w, err)
			return
		}
		defer rows.Close()

		for rows.Next() {
			var name string
			err = rows.Scan(&name)
			if err != nil {
				fmt.Fprint(w, err)
				return
			}
			fmt.Fprint(w, name)
		}
	})

	http.ListenAndServe(":8080", nil)
}