package main

import (
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
)

func main() {
	db, err := sql.Open("postgres", "user=myUser password=myPassword dbname=myDatabase sslmode=disable")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer db.Close()

	var username string
	fmt.Println("Enter your username: ")
	fmt.Scan(&username)

	query := fmt.Sprintf("SELECT * FROM users WHERE username = '%s'", username)
	rows, err := db.Query(query)
	if err != nil {
		fmt.Println(err)
		return
	}
	defer rows.Close()

	for rows.Next() {
		var id int
		var name string
		err = rows.Scan(&id, &name)
		if err != nil {
			fmt.Println(err)
			return
		}
		fmt.Println(id, name)
	}
}