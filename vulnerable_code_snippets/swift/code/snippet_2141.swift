import Foundation

func convertToString(_ input: Int) -> String {
    return String(input, radix: 16)
}

func convertToInt(_ input: String) -> Int? {
    return Int(input, radix: 16)
}

let testString = "😀"
let convertedInt = convertToInt(testString)
print("Converted int: \(convertedInt ?? -1)")

let convertedBackString = convertToString(convertedInt ?? -1)
print("Converted back string: \(convertedBackString)")