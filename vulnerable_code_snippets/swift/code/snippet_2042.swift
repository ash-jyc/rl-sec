class UnsafeClass {
    var unsafeProperty: UnsafeClass?
    
    init() { }
    
    deinit {
        print("UnsafeClass instance is being deinitialized")
    }
}

var instance1: UnsafeClass? = UnsafeClass()
var instance2: UnsafeClass? = UnsafeClass()

instance1?.unsafeProperty = instance2
instance2?.unsafeProperty = instance1

instance1 = nil
instance2 = nil