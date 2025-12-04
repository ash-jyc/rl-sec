import Foundation

class MyClass {
    var myArray = [Int]()
    
    func addValue(value: Int) {
        self.myArray.append(value)
    }
}

var instance: MyClass? = MyClass()

for _ in 0..<1_000_000 {
    instance?.addValue(value: 1)
}

instance = nil