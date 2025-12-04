struct User {
    var name: String
    var age: Int
}

class UserStorage {
    private var users = [User]()
    
    func addUser(_ user: User) {
        users.append(user)
    }
    
    func getUserAtIndex(_ index: Int) -> User? {
        return users[index] // This could lead to a buffer overflow if index is out of bounds
    }
}

let storage = UserStorage()
storage.addUser(User(name: "Alice", age: 25))
storage.addUser(User(name: "Bob", age: 30))

if let user = storage.getUserAtIndex(2) {
    print("User: \(user.name), Age: \(user.age)")
} else {
    print("No user at this index")
}