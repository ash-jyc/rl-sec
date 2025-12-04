import Foundation

class User {
    var name: String?
    var age: Int?
}

func printUserInfo(_ user: User?) {
    if let unwrappedUser = user {
        if let name = unwrappedUser.name, let age = unwrappedUser.age {
            print("Name: \(name), Age: \(age)")
        } else {
            print("Invalid user")
        }
    } else {
        print("No user found")
    }
}

let user = User()
printUserInfo(user)