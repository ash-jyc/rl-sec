import Foundation

func vulnerableFunction(index: Int) {
    let array = [100, 200, 300]
    print("Value at index \(index): \(array[index])")
}

vulnerableFunction(index: 10)