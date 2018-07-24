
import Foundation

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    var pathDict = [Int: Int]()
    for (i, number) in A.enumerated() {
        if number <= X {
            pathDict[number] = 1
        }
        
        if pathDict.count == X {
            return i
        }
    }
    
    return -1
}
