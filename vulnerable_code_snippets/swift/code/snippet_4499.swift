import Foundation

func processUserInput(input: String) {
    var buffer = Array<Int8>(repeating: 0, count: 1024)
    let inputData = input.data(using: .utf8)!
    
    inputData.withUnsafeBytes { (pointer: UnsafePointer<UInt8>) -> Void in
        buffer.withUnsafeMutableBufferPointer { (bufferPointer: UnsafeMutableBufferPointer<Int8>) -> Void in
            bufferPointer.baseAddress?.copyMemory(from: pointer, byteCount: inputData.count)
        }
    }
}

let userInput = "A long string that will cause a buffer overflow"
processUserInput(input: userInput)