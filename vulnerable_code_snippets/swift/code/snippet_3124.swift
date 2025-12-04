class User {
    var name: String?
}

func printUserName(user: User?) {
    print("User's name is \(user.name)")
}

printUserName(user: nil)