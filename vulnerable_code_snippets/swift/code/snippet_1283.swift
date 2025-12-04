import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User's name is \(user.name)") // This line will cause a runtime error if user is nil
}

var user: User? = nil
printUserName(user: user)