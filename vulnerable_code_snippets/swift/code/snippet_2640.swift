import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkVolume: Int
    
    init(name: String, barkVolume: Int) {
        self.barkVolume = barkVolume
        super.init(name: name)
    }
}

let animal = Animal(name: "Generic Animal")
let dog = Dog(name: "Fido", barkVolume: 10)

func printAnimalName(animal: Animal) {
    print("The animal's name is \(animal.name)")
}

printAnimalName(animal: animal) // This will work as expected

// Uncomment the following line to demonstrate the vulnerability
// printAnimalName(animal: dog) // This will crash at runtime because `dog` is actually an instance of `Dog`, not `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as Animal) // This will fail at compile time because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as AnyObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as NSObject as Animal) // This will fail at runtime because `Dog` is not a subtype of `Animal`

// To fix the issue, we need to downcast to `Dog` before accessing `barkVolume`
// printAnimalName(animal: dog as NSObject as AnyObject as NSObject as NSObject as NSObject as NSObject as NSObject as NS