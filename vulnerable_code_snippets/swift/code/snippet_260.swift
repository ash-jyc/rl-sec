import Foundation

func processData(_ data: Data) {
    var buffer = [UInt8](repeating: 0, count: 1024)
    data.copyBytes(to: &buffer, count: buffer.count)
}

let data = Data(repeating: 0xFF, count: 2048)!
processData(data)