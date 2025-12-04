import Foundation

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var people: [Person] = []

for _ in 1...10000 {
    let person = Person(name: "John Doe")
    people.append(person)
}

// At this point, no one else holds a strong reference to the Person instances,
// so they're all deallocated. If we didn't have the deinit method, this would
// cause a memory leak. But because we have it, the message is printed, 
// confirming that the objects were deallocated.
people.removeAll()