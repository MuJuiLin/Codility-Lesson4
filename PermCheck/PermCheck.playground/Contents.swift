
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var dict = [Int: Int]()
    
    for number in A {
        if dict[number] == nil {
            dict[number] = 1
        }
        else {
            dict[number]! += 1
        }
    }
    
    var currentOrder = 1
    for _ in 0..<dict.count {
        if dict[currentOrder] == nil || dict[currentOrder]! > 1 {
            return 0
        }
        currentOrder += 1
    }
    
    return 1
}

var array = [4, 1, 3, 2]
solution(&array)
