import Foundation

class VulnerableClass {
    var data: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        data = UnsafeMutablePointer(calloc(size, 1))
    }
    
    deinit {
        free(data)
    }
    
    func setData(_ newData: [Int8]) {
        let size = min(newData.count, abs(data?.pointee ?? 0))
        data?.withMemoryRebound(to: Int8.self, capacity: size) { (pointer) in
            pointer.initialize(from: newData)
        }
    }
}

let instance = VulnerableClass(size: 10)
instance.setData([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20])