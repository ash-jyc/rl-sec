import Foundation

func processData(data: String) {
    var buffer = Array<UInt8>(repeating: 0, count: 1024)
    let dataBytes = data.utf8
    buffer.append(contentsOf: dataBytes)
}

let data = "A" * 2048
processData(data: data)