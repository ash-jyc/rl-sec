import Foundation

class VulnerableClass {
    private var data: UnsafeMutablePointer<Int8>?
    
    init(size: Int) {
        data = UnsafeMutablePointer<Int8>.allocate(capacity: size)
    }
    
    deinit {
        data?.deallocate()
    }
    
    func setData(at index: Int, value: Int8) {
        data![index] = value
    }
    
    func getData(at index: Int) -> Int8 {
        return data![index]
    }
}

let size = 10
var vulnerableInstance = VulnerableClass(size: size)

for i in 0..<size {
    vulnerableInstance.setData(at: i, value: Int8(i))
}

for i in 0..<size {
    print(vulnerableInstance.getData(at: i))
}