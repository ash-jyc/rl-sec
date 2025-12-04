import Foundation

struct Foo {
    var bar: Int = 0
}

struct Baz {
    var qux: Int = 0
}

let foo = Foo()
let baz = unsafeBitCast(foo, Baz.self)
baz.qux = 42