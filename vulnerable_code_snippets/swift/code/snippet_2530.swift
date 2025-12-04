import Foundation

class Dog {
    var name: String?
    
    init(name: String?) {
        self.name = name
    }
}

var dogs: [Dog] = []

for _ in 1...10000 {
    let dog = Dog(name: "Max")
    dogs.append(dog)
}

dogs[5000].name = nil