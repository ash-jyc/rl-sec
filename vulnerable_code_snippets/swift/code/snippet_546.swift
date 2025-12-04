import Foundation

struct User {
    var name: String?
}

class UserManager {
    var users = [User]()
    
    func addUser(name: String?) {
        let user = User(name: name)
        users.append(user)
    }
    
    func getUserName(at index: Int) -> String {
        return users[index].name // Unsafe force unwrapping here
    }
}

let manager = UserManager()
manager.addUser(name: "John")
print(manager.getUserName(at: 0))