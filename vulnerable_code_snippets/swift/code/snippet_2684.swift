import Foundation

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

func printPersonName(_ person: Person?) {
    print("Name: \(person?.name ?? "")")
}

var john: Person? = Person(name: "John Doe")
printPersonName(john) // prints "Name: John Doe"

john = nil
printPersonName(john) // prints "Name: "

let nullPerson: UnsafeRawPointer = Unmanaged.passUnretained(nil).toOpaque()
let nullPersonPtr = Unmanaged.fromOpaque(nullPerson).takeUnretainedValue()

printPersonName(nullPersonPtr as? Person) // This will crash the program because it's trying to access a property on a nil object