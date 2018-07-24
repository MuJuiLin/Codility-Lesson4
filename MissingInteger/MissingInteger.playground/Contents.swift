
import Foundation

public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    var dict = [Int: Int]()
    for number in A {
        if number > 0 {
            dict[number] = 1
        }
    }
    
    guard dict.count > 0 else { return 1 }
    
    for i in 1...dict.count {
        if dict[i] == nil {
            return i
        }
    }
    
    return dict.count + 1
}
