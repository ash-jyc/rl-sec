import Foundation

// Vulnerable function
func vulnerableFunction(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    
    // Copying inputData into buffer without checking if it fits
    buffer.withUnsafeMutableBufferPointer { bufferPointer in
        inputData.withUnsafeBytes { inputPointer in
            bufferPointer.baseAddress?.copyMemory(from: inputPointer, byteCount: inputData.count)
        }
    }
    
    return String(decoding: buffer, as: UTF8.self)
}

// Testing the function
let testInput = "This is a long string that will cause a buffer overflow"
print(vulnerableFunction(input: testInput))