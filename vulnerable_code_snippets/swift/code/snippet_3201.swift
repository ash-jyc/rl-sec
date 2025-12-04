class MyClass {
    var myStrongReference: [String] = []
    
    func addItem(item: String) {
        self.myStrongReference.append(item)
    }
}

var instance: MyClass? = MyClass()
for _ in 0..<1_000_000 {
    instance?.addItem(item: "A very long string that will consume a lot of memory")
}
instance = nil