import Foundation

class A {
    var data: Int = 10
}

class B {
    var data: Int = 20
}

let a = A()
let b = unsafeBitCast(a, B.self)
b.data = 30

print(a.data) // This will print 30, which is unexpected