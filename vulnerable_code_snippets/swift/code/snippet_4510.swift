import Foundation

class User {
    var name: String?
    var age: Int?
}

func printUserInfo(user: User?) {
    let unwrappedUser = user
    let name = unwrappedUser?.name
    let age = unwrappedUser?.age
    
    if let safeName = name, let safeAge = age {
        print("Name: \(safeName), Age: \(safeAge)")
    } else {
        print("Invalid user data")
    }
}

let user1 = User()
user1.name = "John"
user1.age = 25
printUserInfo(user: user1)

let user2 = User()
printUserInfo(user: user2)