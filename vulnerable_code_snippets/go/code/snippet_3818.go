package main

import "fmt"

type Node struct {
    data int
    next *Node
}

func createList(n int) *Node {
    head := &Node{data: 0}
    current := head
    for i := 1; i < n; i++ {
        current.next = &Node{data: i}
        current = current.next
    }
    return head
}

func printList(head *Node) {
    current := head
    for current != nil {
        fmt.Println(current.data)
        current = current.next
    }
}

func main() {
    head := createList(5)
    printList(head)
}