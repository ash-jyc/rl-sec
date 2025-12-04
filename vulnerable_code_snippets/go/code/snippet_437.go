package main

import "fmt"

type Node struct {
    Value int
    Next *Node
}

func main() {
    n1 := &Node{Value: 1}
    n2 := &Node{Value: 2}
    n3 := &Node{Value: 3}

    n1.Next = n2
    n2.Next = n3

    printList(n1)

    // Vulnerability: Modifying the value of n2.Next without updating its previous node's Next pointer
    n2.Next = nil

    fmt.Println("After corruption:")
    printList(n1)
}

func printList(node *Node) {
    for node != nil {
        fmt.Println(node.Value)
        node = node.Next
    }
}