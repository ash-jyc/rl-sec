import Foundation

class User {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

func createUser() -> User? {
    print("Enter your name:")
    guard let name = readLine(), let age = Int(readLine()) else {
        return nil
    }
    return User(name: name, age: age)
}

let user = createUser()

if let user = user {
    print("Hello, \(user.name)! You are \(user.age) years old.")
} else {
    print("Invalid input.")
}