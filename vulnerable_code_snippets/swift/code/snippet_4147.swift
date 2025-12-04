import Foundation

struct User {
    var name: String
    var age: Int
}

class UserManager {
    var users = [User]()
    
    func addUser(name: String, age: Int) {
        let newUser = User(name: name, age: age)
        users.append(newUser)
    }
    
    func getUser(index: Int) -> User? {
        if index < users.count {
            return users[index]
        } else {
            return nil
        }
    }
}

let manager = UserManager()
manager.addUser(name: "Alice", age: 25)
manager.addUser(name: "Bob", age: 30)

if let user = manager.getUser(index: 100) {
    print("Name: \(user.name), Age: \(user.age)")
} else {
    print("User not found.")
}