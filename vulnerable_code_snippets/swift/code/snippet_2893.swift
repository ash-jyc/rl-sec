import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User's name is \(user.name)")  // This line can cause a runtime error if user is nil
}

let user = User()
printUserName(user: user)