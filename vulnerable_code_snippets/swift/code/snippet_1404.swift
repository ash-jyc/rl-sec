import Foundation

enum MyError: Error {
    case unknown
}

struct User {
    var name: String?
    var age: Int?
}

func getUserName(user: User?) -> String {
    guard let name = user?.name else {
        throw MyError.unknown
    }
    return name
}

do {
    let user = User()
    let name = try getUserName(user: user)
    print("User's name is \(name)")
} catch {
    print("Failed to get user's name")
}