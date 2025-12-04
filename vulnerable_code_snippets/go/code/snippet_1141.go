package main

import "fmt"

type Person struct {
    Name string
}

func main() {
    people := []Person{
        {"Alice"},
        {"Bob"},
        {"Charlie"},
    }

    for i := 0; i <= len(people); i++ {
        fmt.Println(people[i].Name)
    }
}