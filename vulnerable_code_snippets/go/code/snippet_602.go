package main

import "fmt"

func leakyFunction(ch chan int) {
  for i := 0; i < 10; i++ {
    ch <- i
  }
}

func main() {
  ch := make(chan int)
  
  go leakyFunction(ch)
  
  for i := range ch {
    fmt.Println(i)
  }
}