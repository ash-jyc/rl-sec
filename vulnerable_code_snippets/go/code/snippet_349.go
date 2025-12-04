package main

import (
	"fmt"
	"bufio"
	"os"
)

func main() {
	reader := bufio.NewReader(os.Stdin)
	fmt.Print("Enter text: ")
	text, _ := reader.ReadString('\n')

	var buffer [10]byte
	copy(buffer[:], []byte(text))

	fmt.Println("Buffer contents: ", string(buffer[:]))
}