package main

import "fmt"

type Person struct {
	Name string
	Age  int
}

func main() {
	p := &Person{Name: "Alice", Age: 20}
	q := p
	
	fmt.Println(p)
	fmt.Println(q)

	q.Name = "Bob"
	q.Age = 30

	fmt.Println(p)
	fmt.Println(q)
}