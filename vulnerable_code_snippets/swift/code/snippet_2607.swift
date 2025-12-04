import Foundation

class User {
    var name: String?
    var age: Int?
}

func printUserInfo(_ user: User?) {
    let name = user?.name
    let age = user?.age
    
    print("Name: \(name ?? "Unknown"), Age: \(age ?? 0)")
}

let user1 = User()
user1.name = "John"
user1.age = 25

printUserInfo(user1) // This will work fine

let user2 = User()
printUserInfo(user2) // This will crash because user2 is nil