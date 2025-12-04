package main

import "fmt"

type Resource struct {
	isOpen bool
}

func (r *Resource) Open() {
	r.isOpen = true
	fmt.Println("Resource is open")
}

func (r *Resource) Close() {
	if r.isOpen {
		r.isOpen = false
		fmt.Println("Resource is closed")
	}
}

func ProcessResource(r *Resource) error {
	// defer r.Close() // If this line is uncommented, no memory leak will occur
	return nil
}

func main() {
	for i := 0; i < 1000000; i++ {
		r := &Resource{}
		r.Open()
		err := ProcessResource(r)
		if err != nil {
			fmt.Println("Error processing resource:", err) тру
		}
	}
}