import Foundation

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var breed: String
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }
}

var myDog: Dog? = Dog(name: "Max", breed: "Labrador")
myDog = nil // This line of code introduces a memory leak