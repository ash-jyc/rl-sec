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
    
    func getUserNames() -> [String] {
        var names = [String]()
        names.reserveCapacity(users.count)
        
        for user in users {
            names.append(user.name)
        }
        
        return names
    }
}

let manager = UserManager()
manager.addUser(name: "Alice", age: 25)
manager.addUser(name: "Bob", age: 30)

print(manager.getUserNames())