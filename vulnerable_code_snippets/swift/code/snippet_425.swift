import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User name is \(user.name)")
}

let user = User()
printUserName(user: user)