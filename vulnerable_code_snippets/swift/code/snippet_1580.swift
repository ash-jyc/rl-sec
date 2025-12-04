import Foundation

func openURL(_ urlString: String) {
    if let url = URL(string: urlString) {
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}

let attackerControlledURL = "https://malicious-site.com"
openURL(attackerControlledURL)