import Foundation

func copyStringToBuffer(str: String, bufferSize: Int) -> String {
    var buffer = [Character]()
    for i in 0..<min(str.count, bufferSize) {
        buffer.append(str[str.index(str.startIndex, offsetBy: i)])
    }
    return String(buffer)
}

let inputStr = "This is a long string that will cause a buffer overflow"
let bufferSize = 10
print(copyStringToBuffer(str: inputStr, bufferSize: bufferSize))