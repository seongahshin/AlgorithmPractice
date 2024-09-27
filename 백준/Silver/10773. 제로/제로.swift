var stack: [Int] = []
let n = Int(readLine()!)!
var ans = 0

for _ in 0..<n {
    let num = Int(readLine()!)!
    
    if num == 0 {
        stack.removeLast()
    } else {
        stack.append(num)
    }
}

stack.forEach { num in
    ans += num
}

print("\(ans)")
