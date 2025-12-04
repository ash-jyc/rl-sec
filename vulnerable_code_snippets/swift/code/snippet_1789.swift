import Foundation

class User {
    var name: String?
    var age: Int?
}

func processUser(user: User?) -> String {
    guard let unwrappedUser = user else {
        return "Invalid user"
    }
    
    guard let name = unwrappedUser.name, let age = unwrappedUser.age else {
        return "Incomplete user information"
    }
    
    return "Name: \(name), Age: \(age)"
}

let user1 = User()
print(processUser(user: user1))

let user2 = User()
user2.name = "John Doe"
print(processUser(user: user2))

let user3 = User()
user3.age = 30
print(processUser(user: user3))

let user4 = User()
user4.name = "Jane Doe"
user4.age = 25
print(processUser(user: user4))