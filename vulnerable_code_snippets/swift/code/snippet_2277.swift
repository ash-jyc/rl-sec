import Foundation

class User {
    var name: String?
    
    init(name: String?) {
        self.name = name
    }
}

func printUserName(_ user: User!) {
    print("User's name is \(user.name)")
}

let user = User(name: nil)
printUserName(user)