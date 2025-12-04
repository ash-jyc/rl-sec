// Assume we have a class "Person"
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(self.name) is being deinitialized")
    }
}

var person1: Person? = Person(name: "John Doe") // Strong reference
var person2: Person? = Person(name: "Jane Doe") // Strong reference

person1 = nil // Mistakenly released person1
person2 = nil // Mistakenly released person2

// Expected output: Both John Doe and Jane Doe should be deinitialized
// But since person1 and person2 were mistakenly released, they will not be deinitialized

// To fix this issue, we need to ensure that person1 and person2 are never released accidentally