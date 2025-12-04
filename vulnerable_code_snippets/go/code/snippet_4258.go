package main

import "time"

type Data struct {
	value string
}

var data *Data

func main() {
	for {
		data = &Data{value: "important data"}
		// No cleanup of data here, causing memory leak
		time.Sleep(time.Second)
	}
}