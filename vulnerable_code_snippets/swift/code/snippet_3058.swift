import Foundation

class Person {
    var name: String?
    
    init(name: String?) {
        self.name = name
    }
}

struct Student {
    var person: Person
    var age: Int
    
    func displayDetails() {
        print("Name: \(person.name), Age: \(age)")
    }
}

let student = Student(person: Person(name: nil), age: 20)
student.displayDetails()