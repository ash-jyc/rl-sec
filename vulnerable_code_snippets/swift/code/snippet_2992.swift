import Foundation

class ClassA {
    var refToClassB: ClassB?
    
    deinit {
        print("ClassA deinitialized")
    }
}

class ClassB {
    var refToClassA: ClassA?
    
    deinit {
        print("ClassB deinitialized")udson