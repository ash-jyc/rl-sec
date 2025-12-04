import Foundation

let invalidUTF8Data = Data(bytes: [0xC3, 0x28]) // Invalid UTF-8 byte sequence

if let string = String(data: invalidUTF8Data, encoding: .utf8) {
    print("Converted String: \(string)")
} else {
    print("Failed to convert data to String")
}