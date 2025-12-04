import Foundation

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var isBarking: Bool
    init(name: String, isBarking: Bool) {
        self.isBarking = isBarking
        super.init(name: name)
    }
}

let dog = Dog(name: "Max", isBarking: true)

// Unsafe bitcast from Dog to Animal
let animal = unsafeBitCast(dog, to: Animal.self)

// Accessing Dog's property directly from Animal instance
print(animal.isBarking) // This will crash due to memory corruption