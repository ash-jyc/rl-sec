class MyClass {
    var myProperty: String?
    
    init(myProperty: String?) {
        self.myProperty = myProperty
    }
}

var array: [MyClass] = []

for _ in 0..<1_000_000 {
    let myObject = MyClass(myProperty: "Some string")
    array.append(myObject)
}