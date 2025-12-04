import Foundation

func badFunction() -> Int {
    let array = [10, 20, 30, 40, 50]
    let pointer = UnsafeMutablePointer<Int>.allocate(capacity: array.count)
    pointer.initialize(from: array)
    
    let index = 10
    let value = 99
    pointer[index] = value
    
    let result = pointer[3]
    pointer.deallocate()
    
    return result
}

print(badFunction())