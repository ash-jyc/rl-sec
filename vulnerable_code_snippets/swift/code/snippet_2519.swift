import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User name is \(user.name)") // This line will crash if user is nil
}

let user = User()
printUserName(user: user)