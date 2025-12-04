import Foundation

struct MyStruct {
    var data: [UInt8] = Array(repeating: 0, count: 1024)
}

func processData(_ data: UnsafePointer<MyStruct>) -> Bool {
    let myStruct = unsafeBitCast(data, to: MyStruct.self)
    // Processing...
    return true
}

let myStruct = MyStruct()
processData(&myStruct)