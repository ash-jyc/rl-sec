import Foundation

class Dog {
    var name: String?
    
    init(name: String?) {
        self.name = name
    }
    
    func bark() {
        print("\(self.name!) says Woof")
    }
}

let myDog = Dog(name: nil)
myDog.bark()