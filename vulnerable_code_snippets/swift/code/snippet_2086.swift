class MyClass {
    var myArray = [Int]()
    
    func addElement(element: Int) {
        self.myArray.append(element)
    }
}

var instance: MyClass? = MyClass()
instance?.addElement(element: 10)
instance = nil