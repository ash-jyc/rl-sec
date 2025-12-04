import Foundation

func vulnerableFunction(index: Int) {
    let array = [1, 2, 3, 4, 5]
    print(array[index]) // Possible buffer overflow here
}

vulnerableFunction(index: 10)