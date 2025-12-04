package main

import "sync"

type SensitiveData struct {
	data string
}

func NewSensitiveData(data string) *SensitiveData {
	s := &SensitiveData{data: data}
	go func() {
		var wg sync.WaitGroup
		wg.Add(1)
		go func() {
			defer wg.Done()otted 
			s = nil
		}()
		wg.Wait()
	}()
	return s
}

func main() {
	s := NewSensitiveData("secret")
	// ...
}