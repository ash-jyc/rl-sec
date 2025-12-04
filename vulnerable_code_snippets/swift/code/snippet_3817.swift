import Foundation

class User {
    var name: String = ""
    var age: Int = 0
}

func printUserInfo(_ user: User) {
    print("Name: \(user.name), Age: \(user.age)")
}

let user = User()
printUserInfo(user)