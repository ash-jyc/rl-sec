import Foundation

struct DataStruct {
    var data: Int
}

class VulnerableClass {
    let data = DataStruct(data: 10)
    
    func getData() -> DataStruct {
        return unsafeBitCast(self.data, DataStruct.self)
    }
}

let instance = VulnerableClass()
let data = instance.getData()
print(data.data)