import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User name is \(user.name)") // Here is the potential null pointer exception
}

let user = User()
printUserName(user: user)