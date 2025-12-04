import Foundation

class VulnerableClass {
    var importantData: String?
    
    init(data: String?) {
        self.importantData = data
    }
    
    func printImportantData() {
        print(self.importantData!) // Unwrapping nil value here
    }
}

let instance = VulnerableClass(data: nil)
instance.printImportantData()