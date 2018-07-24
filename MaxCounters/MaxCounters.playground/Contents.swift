
import Foundation

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    // write your code in Swift 3.0 (Linux)
    var counters = [Int](repeating: 0, count: N)
    var setAllCounterValue = 0
    var currentMaxValue = 0
    
    for number in A {
        if number <= N {
            if counters[number - 1] < setAllCounterValue {
                counters[number - 1] = setAllCounterValue
            }
            counters[number - 1] += 1
            currentMaxValue = currentMaxValue > counters[number - 1] ? currentMaxValue : counters[number - 1]
        }
        else if number == N + 1 {
            setAllCounterValue = currentMaxValue
        }
    }
    
    for i in 0..<counters.count {
        if counters[i] < setAllCounterValue {
            counters[i] = setAllCounterValue
        }
    }
    
    return counters
}
