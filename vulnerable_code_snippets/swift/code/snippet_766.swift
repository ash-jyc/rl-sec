import Foundation

struct User {
    var name: String?
}

class UserManager {
    var users = [User]()
    
    func addUser(user: User) {
        users.append(user)
    }
    
    func getUserName(at index: Int) -> String {
        return users[index].name // This line can cause a null pointer exception if the 'name' property of the user at the given index is nil
    }
}

let manager = UserManager()
manager.addUser(user: User(name: "John"))
manager.addUser(user: User(name: nil))

print(manager.getUserName(at: 1)) // This will cause a null pointer exception