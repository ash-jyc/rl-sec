import Foundation

func stringFromData(_ data: Data) -> String {
    let string = String(data: data, encoding: .utf8)
    return string ?? ""
}

let data = Data(repeating: 0, count: 1024 * 1024 * 1024) // 1GB of data
let string = stringFromData(data)