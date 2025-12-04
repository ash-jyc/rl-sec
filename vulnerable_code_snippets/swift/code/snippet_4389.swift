import Foundation

class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User Name: \(user?.name)")
}

let user = User()
printUserName(user: user)