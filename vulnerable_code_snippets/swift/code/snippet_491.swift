import Foundation

class VulnerableClass {
    var numbers: [Int] = []
    
    func addNumber(_ number: Int) {
        numbers.append(number)
    }
    
    func getNumberAtIndex(_ index: Int) -> Int? {
        if index < numbers.count {
            return numbers[index]
        } else {
            return nil
        }
    }
}

let instance = VulnerableClass()
instance.addNumber(5)
instance.addNumber(10)

if let number = instance.getNumberAtIndex(2) {
    print("Number at index 2: \(number)")
} else {
    print("Index out of bounds")
}