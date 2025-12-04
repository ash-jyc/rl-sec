import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    let breed: String
    
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name)
    }
}

func feedAnimal(_ animal: Animal?) {
    guard let dog = animal as? Dog else {
        print("This is not a dog")
        return
    }
    
    print("Feeding \(dog.name) the \(dog.breed)")
}

let myDog = Dog(name: "Max", breed: "Labrador")
feedAnimal(myDog) // This will work fine

let myCat = Animal(name: "Mittens")
feedAnimal(myCat) // This will crash at runtime because of incorrect type casting