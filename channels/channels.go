package main

import (
   "fmt"
   "sync"
   
)

func worker(wg *sync.WaitGroup, ch chan int) {
   defer wg.Done()
   
   ch <- 25
   
   // Receive data from channel
   data := <- ch
   fmt.Println("Received:", data)
}

func main() {
   ch := make(chan int,1)
   var wg sync.WaitGroup
   wg.Add(1)
   go worker(&wg, ch)
   wg.Wait()
}