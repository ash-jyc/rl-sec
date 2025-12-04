// Define a function that creates an array of integers
func createArray() -> [Int] {
    var array = [1, 2, 3, 4, 5]
    return array
}

// Define a function that accesses an element at a given index in the array
func accessElement(atIndex index: Int) -> Int? {
    let array = createArray()
    return array[index] // No boundary check here
}

// Access an element at an index that is out of bounds
let result = accessElement(atIndex: 10)
print(result ?? "Out of bounds")