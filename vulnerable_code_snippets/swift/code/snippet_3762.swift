import Foundation

func copyData(_ source: Data, _ destination: UnsafeMutablePointer<UInt8>, _ size: Int) {
    source.withUnsafeBytes { (pointer: UnsafePointer<UInt8>) -> Void in
        destination.initialize(to: pointer, count: size)
    }
}

let source = Data(repeating: 0xFF, count: 1024)
var destination = [UInt8](repeating: 0, count: 512)

copyData(source, &destination, 1024)