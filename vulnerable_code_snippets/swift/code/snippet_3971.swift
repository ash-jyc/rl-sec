// This is a simple function that adds elements to an array
func addElements(array: inout [Int], elements: [Int]) {
    for i in 0..<elements.count {
        array.append(elements[i])
    }
}

var myArray = [1, 2, 3]
let extraElements = [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15] // This will cause a buffer overflow
addElements(array: &myArray, elements: extraElements)
print(myArray)