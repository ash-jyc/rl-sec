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

func main() {
	var animal Animal = Dog{}
	fmt.Println(animal.Speak()) // This will print "Woof!"

	// Now let's try to assign a Cat to the variable and call its Speak method
	animal = Cat{}
	fmt.Println(animal.Speak()) // This will print "Meow!"

	// Now let's try to assert that our variable is a Dog and call its Speak method
	if dog, ok := animal.(Dog); ok {
		fmt.Println(dog.Speak()) // This will print "Woof!"
	} else {
		fmt.Println("The animal is not a Dog.")
	}

	// Now let's try to assert that our variable is a Cat and call its Speak method
	if cat, ok := animal.(Cat); ok {
		fmt.Println(cat.Speak()) // This will crash because we're trying to call the Speak method on a Dog, not a Cat
	} else {
		fmt.Println("The animal is not a Cat.")
	}
}