import Foundation

func solution(_ s:String) -> [Int] {
    
    var s = s 
    
    var zeroCnt = 0
    var binaryCnt = 0
    
    while s != "1" {
        let removeZero = s.filter{ $0 != "0"}.count // 1의 개수 
        let removeZeroLen = s.count - removeZero // 0의 개수 
        
        s = String(removeZero, radix: 2)
        
        binaryCnt += 1
        zeroCnt += removeZeroLen
        
    }
    
    
    return [binaryCnt, zeroCnt]
}