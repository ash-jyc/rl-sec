import Foundation

func addElementsToArray(array: [Int], elements: [Int]) -> [Int] {
    var newArray = array
    for element in elements {
        newArray.append(element)
    }
    return newArray
}

let myArray = [1, 2, 3, 4, 5]
let extraElements = [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

let result = addElementsToArray(array: myArray, elements: extraElements)
print(result)