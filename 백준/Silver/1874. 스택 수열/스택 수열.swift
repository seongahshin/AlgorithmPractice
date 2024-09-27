let n = Int(readLine()!)!
var stack: [Int] = []
var ans: [String] = []
var current = 1
var isPossible = true

for _ in 0..<n {
    let target = Int(readLine()!)!
    
    while target >= current {
        stack.append(current)
        current += 1
        ans.append("+")
    }
    
    if target == stack.last {
        stack.removeLast()
        ans.append("-")
    } else {
        isPossible = false
    }
}

if isPossible {
    for op in ans {
        print(op)
    }
} else {
    print("NO")
}