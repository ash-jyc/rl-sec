import Foundation

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkingSound: String
    init(name: String, barkingSound: String) {
        self.barkingSound = barkingSound
        super.init(name: name)
    }
}

let myDog = Dog(name: "Max", barkingSound: "Woof")

// Convert Dog instance to Animal using unsafeBitCast
let myAnimal = unsafeBitCast(myDog, to: Animal.self)

// Now, we can access the properties of the Animal class through the Dog instance
print(myAnimal.name) // Output: Max