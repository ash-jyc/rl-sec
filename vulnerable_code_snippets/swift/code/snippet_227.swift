import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    if let name = user?.name {
        print("User's name is \(name)")
    } else {
        print("No user found")
    }
}

let user1 = User()
user1.name = "John Doe"

printUserName(user: user1) // This will print "User's name is John Doe"

let user2: User? = nil
printUserName(user: user2) // This will print "No user found"