import Foundation
import CommonCrypto

func generateSalt(size: Int = 8) -> Data {
    let salt = Data(count: size)
    salt.withUnsafeMutableBytes { (buffer: UnsafeMutablePointer<UInt8>) in
        for i in 0..<size {
            buffer[i] = UInt8(arc4random_uniform(256))
        }
    }
    return salt
}

func hashPassword(_ password: String, _ salt: Data) -> Data {
    var hashedPassword = Data()
    let passwordData = password.data(using: .utf8)!
    let combinedData: NSMutableData = NSMutableData()
    combinedData.append(passwordData)
    combinedData.append(salt)
    
    let keyData = combinedData as Data
    let key = [UInt8](repeating: 0, count: Int(CC_SHA1_DIGEST_LENGTH))
    
    keyData.withUnsafeBytes { (keyBytes: UnsafePointer<UInt8>) in
        CC_SHA1(keyBytes, CC_LONG(keyData.count), &key)
    }
    
    hashedPassword.append(key)
    return hashedPassword
}

let password = "weakpassword"
let salt = generateSalt()
let hashedPassword = hashPassword(password, salt)
print("Hashed Password: \(hashedPassword)")