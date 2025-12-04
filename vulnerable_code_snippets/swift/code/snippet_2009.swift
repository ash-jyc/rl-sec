import Foundation

func overflowFunction(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    let length = min(buffer.count, inputData.count)
    
    // Buffer overflow vulnerability here
    buffer.withUnsafeMutableBufferPointer { (pointer: UnsafeMutableBufferPointer<UInt8>) in
        pointer.baseAddress?.copyBytes(from: inputData, count: length)
    }
    
    return String(decoding: Data(bytes: &buffer, count: buffer.count), as: UTF8.self) ?? ""
}

let input = "This is a long string that will cause a buffer overflow"
print(overflowFunction(input: input))