import Foundation

func processData(_ data: String) {
    var buffer = Array<Character>(repeating: " ", count: 10)
    for (index, char) in data.enumerated() {
        if index < buffer.count {
            buffer[index] = char
        }
    }
}

let longString = "This string is much longer than the buffer's capacity, causing a buffer overflow!"
processData(longString)