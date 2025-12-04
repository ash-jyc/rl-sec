import Foundation

class VulnerableArray {
    var data: [Int] = []
    
    init(size: Int) {
        self.data = Array(repeating: 0, count: size)
    }
    
    func addElement(_ element: Int) {
        self.data.append(element)
    }
}

let array = VulnerableArray(size: 5)
array.addElement(10)
array.addElement(20)
array.addElement(30)
array.addElement(40)
array.addElement(50)
array.addElement(60) // This will cause a buffer overflow