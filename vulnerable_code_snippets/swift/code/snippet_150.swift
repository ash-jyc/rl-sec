import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = [UInt8](repeating: 0, count: 1024)
    let bytes = input.utf8.map { UInt8($0) }
    
    for (index, byte) in bytes.enumerated() {
        buffer[index] = byte
    }
    
    return String(decoding: buffer, as: UTF8.self)
}

let largeInput = String(repeating: "a", count: 2048)
print(vulnerableFunction(input: largeInput))