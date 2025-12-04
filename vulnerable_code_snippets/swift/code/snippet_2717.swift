import Foundation

let bufferSize = 10
var buffer = UnsafeMutablePointer<Int8>.allocate(capacity: bufferSize)

func writeToBuffer(_ data: String) {
    let bytes = data.utf8.map { Int8($0) }
    
    for i in 0..<bytes.count {
        buffer[i] = bytes[i]
    }
}

writeToBuffer("This is a long string that will cause a buffer overflow")

let result = String(cString: buffer)
print(result)