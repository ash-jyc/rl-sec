package main

import "fmt"

type Animal interface {
	Speak() string
}

type Dog struct{}

func (d Dog) Speak() string {
	return "Woof!"
}

type Cat struct{}

func (c Cat) Speak() string {
	return "Meow!"
}

func getAnimal(name string) Animal {
	if name == "dog" {
		return Dog{}
	} else {
		return Cat{}
	}
}

func main() {
	animal := getAnimal("cat")
	dog, ok := animal.(Dog) // This will panic at runtime because animal is actually a Cat
	if !ok {
		fmt.Println("Animal is not a dog.")
	} else {
		fmt.Println(dog.Speak())
	}
}