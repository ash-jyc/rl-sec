package main

import "time"

type Data struct {
	value string
}

func leakyFunction() *Data {
	d := &Data{value: "important data"}
	return d
}

func main() {
	for {
		_ = leakyFunction()
		time.Sleep(1 * time.Second)
	}
}