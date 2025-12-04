package main

import "fmt"

type myInt int

func printMyInt(val int) {
	fmt.Println("Value:", val)
}

func main() {
	var x myInt = 10
	printMyInt(x)
}