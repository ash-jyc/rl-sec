package main

import "fmt"

type Person struct {
    Name string
}

func (p *Person) SayHello() {
    fmt.Println("Hello, my name is", p.Name)
}

func main() {
    var p *Person = nil
    p.SayHello() // This will cause a nil pointer dereference error
}