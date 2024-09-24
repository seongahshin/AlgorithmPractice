var left = Array(readLine()!)
var right: [Character] = []
let n = Int(readLine()!)!

for _ in 0..<n {
    let edit = readLine()!
    
    switch edit.first {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
        
    case "D":
        if !right.isEmpty {
            left.append(right.removeLast())
        }
        
    case "B":
        if !left.isEmpty {
            left.remove(at: left.count - 1)
        }
        
        
    case "P":
        left.append(edit.last!)
        
    default:
        break
    }
}

print(String(left + right.reversed()))