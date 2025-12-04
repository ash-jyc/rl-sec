import Foundation

func copyArray(_ source: [Int], _ destination: inout [Int]) {
    let sourceCount = source.count
    for i in 0..<sourceCount {
        destination.append(source[i])
    }
}

var sourceArray = [1, 2, 3, 4, 5]
var destinationArray = [6, 7, 8, 9, 10]

copyArray(sourceArray, &destinationArray)

print(destinationArray)