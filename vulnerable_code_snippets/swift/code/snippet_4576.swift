import Foundation

func doSomethingWithString(_ s: String?) {
    let uppercased = s?.uppercased() // Force unwrapping here
    print(uppercased)
}

doSomethingWithString(nil)