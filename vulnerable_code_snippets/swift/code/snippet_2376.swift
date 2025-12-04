import Foundation

class MyClass {
    var myBuffer: [UInt8] = Array(repeating: 0, count: 1024)
    
    func setData(_ data: [UInt8]) {
        myBuffer = data
    }
}

let myInstance = MyClass()
myInstance.setData(Array(repeating: 0, count: 2048))