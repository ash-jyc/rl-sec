package main

import "fmt"

type Node struct {
    value int
    next *Node
}

func createList(n int) *Node {
    head := &Node{value: 0}
    current := head

    for i := 1; i < n; i++ {
        node := &Node{value: i}
        current.next = node
        current = node
    }

    return head
}

func main() {
    head := createList(5)

    for head != nil {
        fmt.Println(head.value)
        head = head.next
    }
}