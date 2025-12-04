package main

import (
	"fmt"
	"strconv"
)

func main() {
	str := "not a number"
	num, _ := strconv.Atoi(str)
	fmt.Println(num)
}