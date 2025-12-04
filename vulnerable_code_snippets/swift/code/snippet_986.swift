import Foundation
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField
    @IBOutlet weak var passwordField: UITextField
    
    override func viewDidLoad() {
        super.viewDidLoad()蜜
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let username = usernameField.text
        let password = passwordField.text
        
        // No input validation or sanitization in place
        let query = "SELECT * FROM users WHERE username='\(username)' AND password='\(password)'"
        
        // Execute the query
        executeQuery(query)
    }
    
    func executeQuery(_ query: String) {
        // Assume this function executes the provided SQL query
    }
}