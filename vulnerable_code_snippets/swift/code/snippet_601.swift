import Foundation

struct MyStruct {
    var data: [UInt8] = []
}

func copyData(_ source: MyStruct, _ destination: inout MyStruct) {
    for byte in source.data {
        destination.data.append(byte)
    }
}

var s1 = MyStruct(data: [1, 2, 3])
var s2 = MyStruct(data: [4, 5, 6])

copyData(s1, &s2)

print(s2.data)