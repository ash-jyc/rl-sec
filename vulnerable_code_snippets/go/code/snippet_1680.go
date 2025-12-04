package main

import (
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
)

func main() {
	db, err := sql.Open("postgres", "user=test password=test dbname=test sslmode=disable")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer db.Close()

	rows, err := db.Query("SELECT * FROM test")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer rows.Close()

	for rows.Next() {
		var id int
		err := rows.Scan(&id)
		if err != nil {
			fmt.Println(err)
			// This is where the error handling could be improved
			// If an error occurs here, we won't close the rows object
			// This can lead to resource leaks and data corruption
			return
		}
		fmt.Println(id)
	}
}