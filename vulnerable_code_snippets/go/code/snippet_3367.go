package main

import "fmt"

type Person struct {
	Name string
	Age  int
}

func main() {
	people := make([]*Person, 0)
	for i := 0; i < 1000000; i++ {
		// This line is vulnerable because every time we create a new person,
		// we store a pointer to it in the slice. This means that even after the function ends,
		// the memory allocated for the person will not be freed. This can lead to a memory leak.
		people = append(people, &Person{Name: fmt.Sprintf("Person%d", i), Age: i})
	}
	fmt.Println("Done")
}