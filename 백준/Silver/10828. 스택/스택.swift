let n = Int(readLine()!)!
var stack: [Int] = []

for _ in 0..<n {
    let edit = readLine()!.split(separator: " ").compactMap { String($0) }
    
    switch edit[0] {
    case "push":
        stack.append(Int(edit[1])!)
    case "top":
        if let last = stack.last {
            print(last)
        } else {
            print("-1")
        }
    case "size":
        print(stack.count)
    case "pop":
        if !stack.isEmpty {
            print(stack.removeLast())
        } else {
            print("-1")
        }
    case "empty":
        if !stack.isEmpty {
            print("0")
        } else {
            print("1")
        }
        
    default:
        break
    }
    
}
