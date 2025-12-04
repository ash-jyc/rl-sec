import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User's name is \(user.name)") // Potential unchecked optional binding failure due to forced unwrapping of nil values.
}

let user = User()
printUserName(user: user)