import Foundation

class MyClass {
    var myString: String?
    
    init(myString: String?) {
        self.myString = myString
    }
}

var array: [MyClass] = []

for _ in 0..<100000 {
    let myObject = MyClass(myString: "some string")
    array.append(myObject)
}

array.removeAll()