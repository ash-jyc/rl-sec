import Foundation

class User {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

func showUserInfo(_ user: User) {
    let message = "Hello, \(user.name)"
    print(message)
}

let userInput = "Alice"
let user = User(name: userInput)
showUserInfo(user)