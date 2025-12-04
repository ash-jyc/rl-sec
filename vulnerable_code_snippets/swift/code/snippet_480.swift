import Foundation

struct MyStruct {
    var data: Int
}

let myInt = 10
let myStruct = unsafeBitCast(myInt, MyStruct.self)

print(myStruct.data) // This will print 10

myStruct.data = 20

print(myStruct.data) // This will print 20

print(myInt) // This will print 10, but it should print 20 due to unsafeBitCast