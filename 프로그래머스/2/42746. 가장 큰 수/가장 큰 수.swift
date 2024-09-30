import Foundation

func solution(_ numbers:[Int]) -> String {
    let arr = numbers.map{ String($0) }.sorted(by: { $0 + $1 > $1 + $0})
    let result = arr.joined()
    return result.first == "0" ? "0" : result
}