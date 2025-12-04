import Foundation

class User {
    var name: String?
    
    func printName() {
        print(name!) // Unsafe force unwrapping of optional value
    }
}

let user = User()
user.printName()