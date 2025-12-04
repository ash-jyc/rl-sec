import Foundation

func storePassword(password: String) {
    let hashedPassword = password.md5() // Vulnerable to collision attacks
    // Store hashedPassword in database
}

extension String {
    func md5() -> String {
        let hashFunction = CC_MD5(data: self.data(using: .utf8)!)
        var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        return digest.map { String(format: "%02x", $0) }.joined()
    }
}