import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User's name is \(user.name)")  // Vulnerable line
}

let user = User()
printUserName(user: user)