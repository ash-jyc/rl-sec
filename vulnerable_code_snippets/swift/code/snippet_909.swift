import Foundation

struct User {
    var name: String
}

class DataManager {
    static let shared = DataManager()
    
    func fetchUser(completion: @escaping (User?) -> Void) {
        DispatchQueue.global().async {
            // Simulate network delay
            Thread.sleep(forTimeInterval: 2)
            
            completion(User(name: "John Doe"))
        }
    }
}

func printUserName() {
    DataManager.shared.fetchUser { user in
        print(user?.name ?? "No user")
    }
}

printUserName()