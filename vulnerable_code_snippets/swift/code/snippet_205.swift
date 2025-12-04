import Foundation

class VulnerableArray {
    var data = [Int]()
    
    func addElement(_ element: Int) {
        data.append(element)
    }
    
    func getElementAtIndex(_ index: Int) -> Int? {
        return data[index]
    }
}

let array = VulnerableArray()
array.addElement(10)
array.addElement(20)
array.addElement(30)

if let element = array.getElementAtIndex(5) {
    print("Element at index 5: \(element)")
} else {
    print("No element at index 5")
}