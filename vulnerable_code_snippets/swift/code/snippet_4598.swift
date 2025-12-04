// Assume we have a class `Person`
class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

// Assume we have a function `printName` which takes a person object and prints its name
func printName(_ person: Person) {
    print(person.name)
}

// Assume we have a function `createPerson` which creates a person object, but it doesn't return it
func createPerson() {
    let person = Person(name: "John Doe")
}

// Now, if we call `createPerson` and then try to print the name of the person, we will get a use-after-free error
createPerson()
printName(Person(name: "")) // This will cause a use-after-free error