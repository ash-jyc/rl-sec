struct Foo {
    var bar: Int
}

struct Baz {
    var qux: Int
}

let foo = Foo(bar: 42)
let baz = unsafeBitCast(foo, Baz.self)
print(baz.qux)