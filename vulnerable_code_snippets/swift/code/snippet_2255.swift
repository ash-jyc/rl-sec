// Define a function that accepts an array of integers and an index
func accessArrayElement(_ array: [Int], _ index: Int) -> Int {
    // Access the element at the given index without checking its validity
    return array[index]
}

let myArray = [10, 20, 30, 40, 50]
print(accessArrayElement(myArray, 2)) // Output: 30
print(accessArrayElement(myArray, 5)) // Runtime error: Index out of range