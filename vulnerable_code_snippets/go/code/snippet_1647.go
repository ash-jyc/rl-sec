package main

import (
	"database/sql"
	"fmt"
	_ "github.com/lib/pq"
)

func OpenDB() (*sql.DB, error) {
	db, err := sql.Open("postgres", "user=dbuser password=dbpassword dbname=test sslmode=disable")
	if err != nil {
		return nil, err
	}
	return db, nil
}

func CloseDB(db *sql.DB) {
	err := db.Close()
	if err != nil {
		fmt.Println("Error closing DB: ", err)
	}
}

func QueryData(query string) (string, error) {
	db, err := OpenDB()
	if err != nil {
		return "", err
	}
	defer CloseDB(db) // This defer statement can lead to resource leak if early return happens before this point

	var data string
	err = db.QueryRow(query).Scan(&data)
	if err != nil {
		return "", err
	}

	return data, nil
}

func main() {
	data, err := QueryData("SELECT * FROM test_table")
	if err != nil {
		fmt.Println("Error querying data: ", err)
	} else {
		fmt.Println("Data: ", data)
	}
}