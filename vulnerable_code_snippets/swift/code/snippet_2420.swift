import Foundation

class User {
    var name: String?
}

class UserManager {
    var users = [User]()
    
    func addUser(name: String?) {
        let user = User()
        user.name = name
        users.append(user)
    }
    
    func printUsers() {
        for user in users {
            if let name = user.name {
                print("User name: \(name)")
            } else {
                print("User without name")
            }
        }
    }
}

let manager = UserManager()
manager.addUser(name: "John Doe")
manager.addUser(name: nil)
manager.printUsers()