import Foundation

func processData(_ data: Data) {
    let string = String(data: data, encoding: .utf8)
    let length = strlen(string)
    let buffer = UnsafeMutablePointer<UInt8>.allocate(capacity: Int(length + 1))
    string.withCString {buffer.initialize(to: $0)}
    
    // This is where the vulnerability occurs. There is no bounds checking here.
    let result = String(cString: buffer)
    print(result)
}

let data = Data(bytes: Array(repeating: 0x41, count: 1024 * 1024))
processData(data)