import Foundation

class UnsafePointerExample {
    typealias VoidUnsafePointer = UnsafeMutablePointer<Void>
    
    var pointer: VoidUnsafePointer?
    
    init() {
        let size = 1024 * 1024 * 1024 // 1GB
        pointer = UnsafeMutablePointer(mutating: UnsafeMutableBufferPointer(start: UnsafeMutableRawPointer(bitPattern: 0)!, count: size))
    }
    
    func writeData(_ data: Data) {
        data.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) in
            self.pointer?.initialize(from: bytes.baseAddress!)
        }
    }
}

let example = UnsafePointerExample()
example.writeData(Data(repeating: 0, count: 1024 * 1024 * 1024)) // This will crash the program due to out-of-memory error