import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    if let name = user?.name {
        print("User's name is \(name)")
    } else {
        print("User's name is not available")
    }
}

let user1 = User()
user1.name = "John Doe"
printUserName(user: user1) // this will print "User's name is John Doe"

let user2 = User()
printUserName(user: user2) // this will crash because user2.name is nil