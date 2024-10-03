import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var result = 1
    var dict = [String:Int]()
    
    for cloth in clothes {
        dict[cloth[1], default: 0] += 1
    }
    
    for count in dict.values {
        result *= (count + 1)
    }
 
    return result - 1
}