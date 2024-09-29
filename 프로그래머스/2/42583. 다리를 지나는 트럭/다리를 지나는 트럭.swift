import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var queue = Array(repeating: 0, count: bridge_length)
    var sum = 0 // 다리에 올라간 트럭의 무게 함
    var waitTruck = truck_weights // 기다리는 트럭들 
    var result = 0 // 총 시간 
    
    while !queue.isEmpty {
        // 시간을 1초 증가 시킴
        result += 1 
        
        // 맨 앞 트럭이 다리를 빠져나간 상황
        sum -= queue.removeFirst()
        
        // 대기 중인 트럭이 있는지 확인 
        if let t = waitTruck.first {
            // 만약 다리 위에 있는 트럭에 추가했을 때 기준 무게 이하라면 다리에 올림
            if sum + t <= weight {
                sum += waitTruck.removeFirst()
                queue.append(t)
            } 
            
            // 무게가 초과되면 다리에 올릴 수 없으니 기존 무게 유지
            else {
                queue.append(0)
            }
        }
        
        
    }
    
    return result
}