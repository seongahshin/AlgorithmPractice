let n = Int(readLine()!)!
var all: [Character] = []

var left: [Character] = []
var right: [Character] = []
var results: [String] = []

for _ in 0..<n {
    let input = readLine()!
    all = Array(input)
    left = []
    right = []
    
    for i in 0..<all.count {
        
        switch all[i] {
            
        case "<":
            
            // 왼쪽꺼를 오른쪽에다가
            if !left.isEmpty {
                right.append(left.removeLast())
            }
            
            
        case ">":
            
            // 오른쪽꺼를 왼쪽에다가
            if !right.isEmpty {
                left.append(right.removeLast())
            }
            
        case "-":
            
            if !left.isEmpty {
                left.removeLast()
            }
    
        default:
            left.append(all[i])
        }
        
    }
    results.append(String(left + right.reversed()))
}

for result in results {
    print(result)
}