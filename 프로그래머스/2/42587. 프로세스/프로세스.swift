import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priority = priorities 
    var arr: [(index: Int, number: Int)] = []
    var order = 0
    
    for i in 0..<priorities.count {
        arr.append((index: i, number: priorities[i]))
    }
    
    
    while !arr.isEmpty {
        let me = arr.removeFirst()
        
        // 지금 뽑은 값이 최대값이 아니라면
        if arr.contains(where: { $0.number > me.number }) {
            arr.append(me)
            
        } 
        // 지금 뽑은 값이 최대값이면
        else {
            order += 1 
                
            if me.index == location {
                return order 
            }
        }
        

        
    }
    
    return -1
}