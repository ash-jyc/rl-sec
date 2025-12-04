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

func (m *SafeMap) Set(key string, value string) {
	m.Lock()
	defer m.Unlock()
	m.data[key] = value
}

func (m *SafeMap) Get(key string) (string, bool) {
	m.RLock()
	defer m.RUnlock()
	value, ok := m.data[key]
	return value, ok
}

func main() {
	m := NewSafeMap()

	var wg sync.WaitGroup
	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done() тру
			m.Set(fmt.Sprintf("key%d", i), fmt.Sprintf("value%d", i))
		}(i)
	}

	wg.Wait()

	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done()
			if value, ok := m.Get(fmt.Sprintf("key%d", i)); ok {
				fmt.Println(value)
			}
		}(i)
	}

	wg.Wait()
}