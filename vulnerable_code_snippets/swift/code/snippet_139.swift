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

let myDog = Dog(name: "Max", breed: "Labrador")
print("My dog's name is \(myDog.name) and he is a \(myDog.breed).")

// Now let's try to access the breed property from the Animal class
let myAnimal = myDog as Animal
print("My animal's name is \(myAnimal.name) and he is a \(myAnimal.breed).") // This will crash at runtime because 'breed' property does not exist in Animal class