import Foundation

class Animal {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkSound: String
    init(name: String, barkSound: String) {
        self.barkSound = barkSound
        super.init(name: name)
    }
}

let myDog = Dog(name: "Fido", barkSound: "Woof")

// Unsafely cast myDog to Animal. This is unsafe because Dog has additional properties (barkSound)
let myAnimal = unsafeBitCast(myDog, to: Animal.self)

// Now we try to access barkSound on myAnimal. This will crash because myAnimal doesn't have a barkSound property.
print(myAnimal.barkSound)