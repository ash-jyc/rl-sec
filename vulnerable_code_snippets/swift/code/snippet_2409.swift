import Foundation

struct User {
    var name: String
    var age: Int
}

class VulnerableArray {
    private var array: [User] = []
    
    func addUser(_ user: User) {
        array.append(user)
    }
    
    func getUserAtIndex(_ index: Int) -> User? {
        if index < array.count {
            return array[index]
        } else {
            return nil
        }
    }
}

let array = VulnerableArray()
array.addUser(User(name: "Alice", age: 25))
array.addUser(User(name: "Bob", age: 30))

if let user = array.getUserAtIndex(3) {
    print("Name: \(user.name), Age: \(user.age)")
} else {
    print("No user at this index")
}