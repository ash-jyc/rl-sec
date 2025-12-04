package main

import "fmt"

type Animal interface {
	Speak() string
}

type Dog struct{}

func (d *Dog) Speak() string {
	return "Woof!"
}

type Cat struct{}

func (c *Cat) Speak() string {
	return "Meow!"
}

func getAnimal(name string) Animal {
	if name == "dog" {
		return &Dog{}
	} else if name == "cat" {
		return &Cat{}
	} else {
		return nil
	}
}

func main() {
	animal := getAnimal("dog")
	if animal != nil {
		fmt.Println(animal.Speak())
	}

	animal = getAnimal("cat")
	if animal != nil {
		fmt.Println(animal.Speak())
	}

	// This will panic because we tried to assert a *Dog to a *Cat
	animal = getAnimal("dog")
	if d, ok := animal.(*Cat); ok {
		fmt.Println(d.Speak())
	} else {
		fmt.Println("Type assertion failed.")
	}
}