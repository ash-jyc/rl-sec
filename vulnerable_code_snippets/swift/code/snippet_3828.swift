import Foundation

func accessArrayOutOfBounds() {
    let array = [1, 2, 3, 4, 5]
    for i in 0...5 {
        print(array[i])
    }
}

accessArrayOutOfBounds()