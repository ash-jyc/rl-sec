import Foundation

func encodeAndDecode(_ string: String) -> String? {
    let data = string.data(using: .utf8)!
    let decodedString = String(data: data, encoding: .nonUTF8)
    return decodedString
}

let testString = "Hello, World!"
if let result = encodeAndDecode(testString) {
    print(result)
} else {
    print("Failed to decode string")
}