import Foundation

class UnsafeString {
    let string: String
    
    init(string: String) {
        self.string = string
    }
}

func createUnsafeString() -> UnsafeMutablePointer<UnsafeString> {
    let unsafeString = UnsafeMutablePointer<UnsafeString>.allocate(capacity: 1)
    let string = UnsafeString(string: "Hello, World")
    unsafeString.initialize(to: string)
    return unsafeString
}

let unsafeStringPtr = createUnsafeString()
print(unsafeStringPtr.pointee.string) // prints "Hello, World"

unsafeStringPtr.deallocate() // deallocate without freeing memory

print(unsafeStringPtr.pointee.string) // will crash or print garbage value