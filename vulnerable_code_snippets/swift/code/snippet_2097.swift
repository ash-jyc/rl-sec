import Foundation

class MyClass {
    var data: Int = 0
}

class UnsafeBitCastExample {
    func unsafeBitCastExample() {
        let myInstance = MyClass()
        let myDataPointer = withUnsafeMutablePointer(to: &myInstance.data) { pointer in
            return pointer
        }

        let castedPointer = myDataPointer?.load(as: UInt8.self)
        print("Casted Pointer Value: \(castedPointer ?? 0)")
        
        // This is where the vulnerability occurs
        let unsafeCastPointer = myDataPointer?.load(as: UInt64.self)
        print("Unsafe Casted Pointer Value: \(unsafeCastPointer ?? 0)")
    }
}

let example = UnsafeBitCastExample()
example.unsafeBitCastExample()