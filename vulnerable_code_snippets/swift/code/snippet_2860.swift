import Foundation

func vulnerableFunction(input: String) -> String {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let inputData = input.utf8
    
    // This is where the vulnerability occurs. We're not checking if the inputData
    // is larger than our buffer. If it is, we'll overwrite memory we shouldn't.
    buffer.withUnsafeMutableBufferPointer { bufferPointer in
        inputData.withUnsafeBytes { inputPointer in
            bufferPointer.baseAddress?.copyBytes(from: inputPointer, count: inputData.count)
        }
    }
    
    return String(decoding: buffer, as: UTF8.self)
}

let result = vulnerableFunction(input: "This is a long string that will overflow the buffer")
print(result)