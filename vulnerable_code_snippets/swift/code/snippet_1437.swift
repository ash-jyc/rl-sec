import Foundation

class VulnerableClass {
    var secretData: UnsafeMutablePointer<Int8> = nil
    
    init() {
        let dataSize = 1024 * 1024 * 1024 // 1GB of data
        secretData = UnsafeMutablePointer(malloc(dataSize))
    }
    
    deinit {
        free(secretData)
    }
    
    func getSecretData() -> Data {
        return Data(bytes: secretData, count: 1024 * 1024 * 1024)
    }
}

let instance = VulnerableClass()
let secretData = instance.getSecretData()