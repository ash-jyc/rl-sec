package main

import (
	"fmt"
	"sync"
)

type SafeMap struct {
	sync.RWMutex
	data map[string]string
}

func NewSafeMap() *SafeMap {
	return &SafeMap{
		data: make(map[string]string),
	}
}

func (s *SafeMap) Read(key string) (string, bool) {
	s.RLock()
	defer s.RUnlock()
	value, ok := s.data[key]
	return value, ok
}

func (s *SafeMap) Write(key, value string) {
	s.Lock()
	defer s.Unlock()
	s.data[key] = value
}

func main() {
	m := NewSafeMap()

	var wg sync.WaitGroup
	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done()
			m.Write("key", fmt.Sprintf("value%d", i))
		}(i)
	}

	wg.Wait()

	fmt.Println(m.Read("key"))
}