import Foundation

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkType: String
    
    init(name: String, barkType: String) {
        self.barkType = barkType
        super.init(name: name)
    }
}

class Cat: Animal {
    var meowType: String
    
    init(name: String, meowType: String) { inclusion_type: InclusionType) {
        self.meowType = meowType
        super.init(name: name)
    }
}

let dog = Dog(name: "Bobby", barkType: "Loud")
let cat = Cat(name: "Sylvester", meowType: "Soft")

let animals: [Animal] = [dog, cat]

for animal in animals {
    if let dog = animal as? Dog {
        print("Dog \(dog.name) barks \(dog.barkType)")
    } else if let cat = animal as? Cat {
        print("Cat \(cat.name) meows \(cat.meowType)")
    }
}