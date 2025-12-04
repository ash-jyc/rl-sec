import Foundation

func processData(_ data: String) -> String {
    var result = ""
    let maxLength = 1024 * 1024 // 1MB
    let dataLength = data.count
    
    if dataLength > maxLength {
        print("Data length exceeded maximum limit.")
        return ""
    }
    
    for i in 0..<dataLength {
        result += data[data.index(data.startIndex, offsetBy: i)]
    }
    
    return result
}

let largeData = Array(repeating: "a", count: 2000000).joined() // 2MB data
processData(largeData)