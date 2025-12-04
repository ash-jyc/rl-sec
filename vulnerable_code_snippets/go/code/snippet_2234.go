package main

import "fmt"

type Node struct {
   value int
   next *Node
}

func createList(n int) *Node {
   var head *Node
   for i := 0; i < n; i++ {
      node := Node{value: i, next: head}
      head = &node
   }
   return head
}

func main() {
   head := createList(1000000)
   fmt.Println(head.value)
}