import Foundation

func createStringFromUnsafePointer(ptr: UnsafePointer<UInt8>) -> String {
    let bytes = ptr.withMemoryRebound(to: UInt8.self, capacity: 10) { pointer in
        let byteArray = Array(UnsafeBufferPointer(start: pointer, count: 10))
        return byteArray
    }
    return String(bytes: bytes, encoding: .utf8)!
}

let data = Data(repeating: 65, count: 10) // AAAAAAAAAA
let string = createStringFromUnsafePointer(ptr: data.bytes.bindMemory(to: UInt8.self).baseAddress!)
print(string)