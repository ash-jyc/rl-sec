import Foundation

class MyClass {
    var myValue: Int = 0
}

let myInstance = MyClass()
myInstance.myValue = 10

print("Before unsafeBitCast: \(myInstance.myValue)")

let myUnsafeCast = unsafeBitCast(myInstance, to: UInt8.self)

print("After unsafeBitCast: \(myUnsafeCast)")