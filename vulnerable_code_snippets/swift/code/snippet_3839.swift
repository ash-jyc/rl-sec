import Foundation

struct VulnerableArray {
    var elements: [Int]

    mutating func addElement(_ element: Int) {
        elements.append(element)
    }
}

var myArray = VulnerableArray(elements: [1, 2, 3])
myArray.addElement(4)
myArray.addElement(5)
myArray.addElement(6)
myArray.addElement(7)