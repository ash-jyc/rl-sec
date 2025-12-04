import Foundation

func convertToStringFromData(_ data: Data) -> String {
    return String(data: data, encoding: .utf8)!
}

let myData = Data("Hello, World!".utf8)
let myString = convertToStringFromData(myData)
print(myString)