import Foundation

class User {
    var name: String?
}

class UserProfileViewController: UIViewController {
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()ivalidateUserProfile()
    }
    
    func invalidateUserProfile() {
        let userName = user.name // Potential null pointer exception here
        print("User name: \(userName)")
    }
}