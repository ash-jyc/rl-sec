import Foundation

struct User {
    let name: String
    let age: Int
}

func fetchUser() -> User? {
    guard let url = URL(string: "http://example.com/user") else { return nil }
    
    do {
        let data = try Data(contentsOf: url)
        let jsonDecoder = JSONDecoder()
        let user = try jsonDecoder.decode(User.self, from: data)
        return user
    } catch {
        return nil
    }
}

let user = fetchUser()
print("User: \(String(describing: user))")