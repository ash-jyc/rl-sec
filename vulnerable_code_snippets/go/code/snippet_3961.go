package main

import "fmt"

type Node struct {
	Value int
	Next  *Node
}

func main() {
	head := &Node{Value: 1}
	second := &Node{Value: 2}
	third := &Node{Value: 3}

	head.Next = second
	second.Next = third

	// This creates a memory leak because `Next` pointer of each node points to the next node, but there's no way to free the memory of the nodes when they are no longer needed.
	// This can continue indefinitely if new nodes are added to the list, causing a memory leak.

	for head != nil {
		fmt.Println(head.Value)
		head = head.Next
	}
}